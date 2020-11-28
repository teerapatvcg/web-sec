<template>
  <div><Menu />
    <div class="wrapper">
      <div class="content-wrapper">
        <div class="card text-center">
          <div class="card-header"></div>
          <div class="card-body ">
            <div class="card mx-auto" style="width: 50%;">
              <div class="card-body sha">
                <div class="row">
                  <div class="col ">
                    <form action="#">
                      <div class="row">
                        <div class="col-6 ">
                        <div class="alert alert-primary sha" role="alert">เบอร์โทรศัพท์</div>
                        </div>
                        <div class="col-6 ">
                          <div class="alert alert-success sha" role="alert">ID LINE</div>
                        </div>
                      </div>
                      <div class="row" v-for="i in datas">
                        <div class="col-6 x">
                          <label for="">{{i.tel}}</label>
                        </div>
                        <div class="col-6">
                          <label for="" class="">{{i.line}}</label>
                        </div>
                      </div>

                      <div class="row" >
                        <div class="col-6  mt-3">
                        <div class="alert alert-info sha" role="alert">E-mail</div>
                        </div>
                        <div class="col-6  mt-3">
                          <div class="alert alert-info sha" role="alert">ที่อยู่ร้าน</div>
                        </div>
                      </div>
                      <div class="row" v-for="i in datas">
                        <div class="col-6">
                          <label for="">{{i.email}}</label>
                        </div>
                        <div class="col-6">
                          <label for="">{{i.address}}</label>
                        </div>
                      </div>
                    </form>
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
import Menu from'@/components/Menu'
export default {
   data() {
    return {
      datas: [],
    };
  },
  async mounted() {
    const axios = require("axios");
    await axios
      .get("http://localhost:80/selectcontact.php")
      .then((response) => {
        response.data.forEach((element) => {
          // console.log(element.first_name);
          this.datas.push(element);
        });
      })
      .catch(function(error) {
        // handle error
        console.log(error);
      });
  },
  methods:{
    ci_home(){
      window.location.href = "/main";
    },
    ci_contact(){
      window.location.href = "/main";
    },
    ci_promotion(){
      window.location.href = "/main";
    }
  },
  components:{Menu}

};
</script>

<style>
.sha{
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
</style>