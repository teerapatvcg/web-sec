<template>
  <div>
    
    <div class="wrapper"><Menu />
      <div class="content-wrapper">
        <div class="card text-center">
          <div class="card-header"></div>
          <div class="card-body">
            <div class="row" v-for="i in datas">
              <div class="col-8 mx-auto mb-1 ">
                <div
                  id="carouselExampleIndicators"
                  class="carousel slide"
                  data-ride="carousel"
                >
                  <ol class="carousel-indicators">
                    <li
                      data-target="#carouselExampleIndicators"
                      data-slide-to="0"
                      class="active"
                    ></li>
                    <li
                      data-target="#carouselExampleIndicators"
                      data-slide-to="1"
                    ></li>
                    <li
                      data-target="#carouselExampleIndicators"
                      data-slide-to="2"
                    ></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active ">
                      <img
                        :src="i.img1"
                        class="d-block w-100"
                        alt="..."
                        wight="150px"
                        height="300px"
                      />
                    </div>
                    <div class="carousel-item">
                      <img
                        :src="i.img2"
                        class="d-block w-100"
                        alt="..."
                        wight="150px"
                        height="300px"
                      />
                    </div>
                    <div class="carousel-item">
                      <img
                        :src="i.img3"
                        class="d-block w-100"
                        alt="..."
                        wight="150px"
                        height="300px"
                      />
                    </div>
                  </div>
                  <a
                    class="carousel-control-prev"
                    href="#carouselExampleIndicators"
                    role="button"
                    data-slide="prev"
                  >
                    <span
                      class="carousel-control-prev-icon"
                      aria-hidden="true"
                    ></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a
                    class="carousel-control-next"
                    href="#carouselExampleIndicators"
                    role="button"
                    data-slide="next"
                  >
                    <span
                      class="carousel-control-next-icon"
                      aria-hidden="true"
                    ></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
              </div>
            </div>
            <h5 class="alert alert-danger">รถ Promotion</h5>
            <div class="row" >
            <div class="col-3" v-for="i in datass">
                <div class="card mx-auto text-center " style="width: 15rem">
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
import firebase from "firebase";
import swal from "sweetalert";
export default {
  data() {
    return {
      serial: "",
      datas: [],
      datass: [],
    };
  },
  async mounted() {
    const axios = require("axios");
    var data = new FormData();
    
      await axios
      .post("http://localhost:80/select_mainfirst.php")
      .then((response) => {
        response.data.forEach((element) => {
          
          console.log(element);
          this.datas.push(element);
        });
      })
      .catch(function(error) {
        console.log(error);
      });
      await axios
      .get("http://localhost:80/selectpro.php")
      .then((response) => {
        response.data.forEach((element) => {
          
          console.log(element);
          this.datass.push(element);
        });
      })
      .catch(function(error) {
        // handle error
        console.log(error);
      });
  },
  methods: {
    detail(id_car){
      localStorage.setItem("detaill",id_car);
       window.location.href = "/show_car";
    }
  },
  components: { Menu },
};
</script>

<style></style>
