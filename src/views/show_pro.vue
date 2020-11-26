<template>
  <div>
    <div class="wrapper"><Menu />
      <div class="content-wrapper">
        <div class="card text-center">
          <div class="card-header"></div>
          <div class="card-body">
          <div class="alert alert-danger" role="alert">รถจัด Promotion</div>
            <div class="row" >
            <div class="col-3" v-for="i in datas">
                <div class="card mx-auto text-center" style="width: 18rem">
                  <div id="img_container">
                    <img
                      :src="i.Pic1"
                      class="img-thumbnail rounded  mx-auto"
                      height="180px"
                    />
                  </div>
                  <div class="card-body">
                    <h5 class="card-title-center">{{i.Year}} Honda {{i.Model}}</h5>
                    <p class="card-text"> รายละเอียดรุ่น {{i.Detailcar}}</p>
                    <p class="card-text">ราคา : {{i.Price}}</p>
                    <p class="card-text">ลดราคา : {{i.Promotion}}</p>
                    <a href="#" class="btn btn-primary" @click="detail(i.id)">ดูรายละเอียด</a>
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
export default {
  data() {
    return {
      datas: [],
    };
  },
  async mounted() {
    const axios = require("axios");
    await axios
      .get("http://localhost:80/selectpro.php")
      .then((response) => {
        response.data.forEach((element) => {
          
          console.log(element);
          this.datas.push(element);
        });
      })
      .catch(function(error) {
        // handle error
        console.log(error);
      });
      
  },
  methods: {
    ci_home() {
      window.location.href = "/main";
    },
    ci_contact() {
      window.location.href = "/main";
    },
    ci_promotion() {
      window.location.href = "/main";
    },
    detail(id_car){
      localStorage.setItem("detaill",id_car);
       window.location.href = "/show_car";
    }
  },
  components: { Menu },
};
</script>

<style></style>
