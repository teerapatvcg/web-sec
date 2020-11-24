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
                      <div class="row">
                        <div class="col-6 x">
                          <div class="form-group">
                            <input
                              name="tel"
                              type="text"
                              class="form-control manu mx-auto x"
                              id="exampleInputEmail1"
                            />
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <input
                              name="line"
                              type="text"
                              class="form-control manu mx-auto x"
                              id="exampleInputEmail1"
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
                              id="exampleInputEmail1"
                            />
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <input
                              name="address"
                              type="text"
                              class="form-control manu mx-auto x"
                              id="exampleInputEmail1"
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
      });
    },
  },

  components: { Menu },
};
</script>

<style></style>
