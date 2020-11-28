<template>
  <div>
    <Menu />
    <div class="wrapper">
      <div class="content-wrapper">
        <div class="card text-center">
          <div class="card-header"></div>
          <div class="card-body ">
            <div class="card mx-auto" style="width: 50%;">
              <div class="card-body">
                <div class="row">
                  <div class="col ">
                    <div class="row ">
                      <div class="col-4 offset-4 text-left mt-3 ">
                        <div class="form-group">
                          <label for="exampleFormControlFile1"
                            >แก้ไขรูป</label
                          >
                          <input
                            type="file"
                            id="files"
                            name="files[]"
                            multiple
                          />
                        </div>
                      </div>
                    </div>
                    <div class="row ">
                      <div class="col-6 offset-3 text-center mt-3 ">
                        <div class="form-group">
                          <button
                            type="submit"
                            class="btn btn-success"
                            @click="test"
                          >
                            Success
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="card-footer text-muted"></div>
        </div>
      </div>
      <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
      </aside>
    </div>
  </div>
</template>

<script>
import Menu from "@/components/Menu";
import firebase from "firebase";
import swal from "sweetalert";
export default {
  data() {
    return {
      serial: "",
      datas: [],
    };
  },
  methods: {
    async test() {
      const axios = require("axios").default;
      var storageRef = firebase.storage().ref("img");
      // Get the file from DOM
      var file = document.getElementById("files").files[0];
      var file1 = document.getElementById("files").files[1];
      var file2 = document.getElementById("files").files[2];
      console.log(file.name);
      console.log(file1.name);
      console.log(file2.name);
      // console.log(file2.name);
      //dynamically s1et reference to the file name
      var thisRef = storageRef.child(file.name);
      //put request upload file to firebase storage
      await thisRef.put(file).then((snapshot) => {
        // swal("Good job!", "You clicked the button!", "success");
        console.log("Uploaded a blob or file!");
      });
      thisRef = storageRef.child(file1.name);
      //put request upload file to firebase storage
      await thisRef.put(file1).then((snapshot) => {
        // swal("Good job!", "You clicked the button!", "success");
        console.log("Uploaded a blob or file!");
      });
      thisRef = storageRef.child(file2.name);
      //put request upload file to firebase storage
      await thisRef.put(file2).then((snapshot) => {
        // swal("Good job!", "You clicked the button!", "success");
        console.log("Uploaded a blob or file!");
      });
      const storage = firebase.storage();
      // let linkimg = "";
      // Get metadata properties
      let linkimg;
      let self = this;
      await storage
        .ref("img")
        .child(file.name)
        .getDownloadURL()
        .then((url) => {
          // console.log(typeof url);
          // console.log(url);
          self.linkimg = url;
          self.datas.push(url);

          storage
            .ref("img")
            .child(file1.name)
            .getDownloadURL()
            .then((url) => {
              // console.log(typeof url);
              // console.log(url);
              self.linkimg = url;
              self.datas.push(url);

              storage
                .ref("img")
                .child(file2.name)
                .getDownloadURL()
                .then((url) => {
                  // console.log(typeof url);
                  // console.log(url);
                  self.linkimg = url;
                  self.datas.push(url);

                  var data = new FormData();
                  var count = 0;
                  console.log(localStorage.getItem("id_car_img"));
                  data.append("id_car_img", localStorage.getItem("id_car_img"));
                  data.append("Pic1", self.datas[0]);
                  data.append("Pic2", self.datas[1]);
                  data.append("Pic3", self.datas[2]);

                  console.log(data);
                  if (1) {
                    data.forEach((element) => {
                      console.log(element);
                      console.log(count);
                    });
                  }
                  axios
                    .post("http://localhost:80/edit_img.php", data)
                    .then((response) => {
                      console.log(response.data);
                      console.log(count);
                      swal("แก้ไขรูปสำเร็จ", {
                                  icon:"success",
                                  buttons: false,
                                  timer: 1800,
                                });
                            setTimeout(() => {
                          window.location.href = "/edit";
                        }, 2000);
                    });
                });
            });
        });
    },
  },
  components: { Menu },
};
</script>

<style></style>
