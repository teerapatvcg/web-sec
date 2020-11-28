<template>
  <div>
    <Menu />
    <div class="wrapper">
      <div class="content-wrapper">
        <div class="card text-center">
          <div class="card-header"></div>
          <div class="card-body ">
            <div class="card mx-auto" style="width: 50%;">
              <div class="card-body sha">
                <div class="row" >
                  <div class="col ">
                    <form action="#">
                      <div class="row">
                        <div class="col-6 ">
                          <label for="exampleFormControlSelect1"
                            >เบอร์โทรศัพท์</label
                          >
                        </div>
                        <div class="col-6 ">
                          <label for="exampleFormControlSelect1">ID LINE</label>
                        </div>
                      </div>
                      <div class="row" >
                        <div class="col-6 x">
                          <div class="form-group">
                            <input
                              name="tel"
                              type="text"
                              class="form-control manu mx-auto x"
                              id="tel"
                            />
                            
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group" >
                            <input
                              name="line"
                              type="text"
                              class="form-control manu mx-auto x"
                              id="line"
                            />
                          </div>
                        </div>
                      </div>

                      <div class="row">
                        <div class="col-6  mt-3">
                          <label for="exampleInputEmail1">E-mail</label>
                        </div>
                        <div class="col-6  mt-3">
                          <label for="exampleInputEmail1">ที่อยู่</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-6">
                          <div class="form-group">
                            <input
                              name="email"
                              type="text"
                              class="form-control manu mx-auto x"
                              id="email"
                            />
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <input
                              name="address"
                              type="text"
                              class="form-control manu mx-auto x"
                              id="address"
                            />
                          </div>
                        </div>
                      </div>

                      
                    </form>
                    <div class="row ">
                        <div class="col-6 offset-3 text-center mt-3 ">
                          <div class="form-group">
                            <button class="btn btn-success" @click="test">
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
  mounted(){
    const axios = require("axios");
    var data = new FormData();
     axios
      .post("http://localhost:80/select_contact_edit.php",data)
      .then((response) => {
        response.data.forEach((element) => {
          
          console.log(element);
          this.datas.push(element);
          document.getElementById("tel").value = element.tel;
          document.getElementById("line").value = element.line;
          document.getElementById("email").value = element.email;
          document.getElementById("address").value = element.address;
        });
      })
      .catch(function(error) {
        console.log(error);
      });
  },
  methods: {
    async test() {
      const axios = require("axios").default;
      var data = new FormData();
      var count = 0;
      data.append("tel", document.querySelector("input[name=tel]").value);
      data.append("line", document.querySelector("input[name=line]").value);
      data.append("email", document.querySelector("input[name=email]").value);
      data.append(
        "address",
        document.querySelector("input[name=address]").value
      );
      console.log(data);
      if (1) {
        data.forEach((element) => {
          console.log(element);
          console.log(count);
          count++;
        });
      }
      axios.post("http://localhost:80/contact.php", data).then((response) => {
        console.log(response.data);
        console.log(count);
        swal("บันทึกข้อมูลสำเร็จ", "You clicked the button!", "success");
        
      });
    },
  },

  components: { Menu },
};
</script>

<style>
.sha{
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
</style>
