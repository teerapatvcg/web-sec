<template>
  <div>
    <div class="wrapper"><Menu />
      <div class="content-wrapper">
        <div class="card text-center">
          <div class="card-header"></div>
          <div class="card-body">
          <div class="alert alert-danger" role="alert">รถจัด Promotion</div>
            <div class="row" v-for="i in datas">
            <div class="col-3" >
                <div class="card mx-auto text-center" style="width: 18rem" >
                  <div id="img_container">
                    <img
                      :src="i.Pic1"
                      class="img-thumbnail rounded  mx-auto"
                      height="180px"
                    />
                  </div>
                  <div class="card-body" >
                    <h5 class="card-title-center">{{i.Year}} Honda {{i.Model}}</h5>
                    <p class="card-text"> รายละเอียดรุ่น {{i.Detailcar}}</p>
                    <p class="card-text">ราคา : {{i.Price}}</p>
                    <p class="card-text">ลดราคา : {{i.Promotion}}</p>
                    <a href="#" class="btn btn-primary">ดูรายละเอียด</a>
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
    var data = new FormData();
    data.append("model",localStorage.getItem("model"));
    data.append("price",localStorage.getItem("price"));
    await axios.post("http://localhost:80/select_seach.php",data)
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
  },
  components: { Menu },
};
</script>

<style></style>
