<template>
  <div>
    <div class="wrapper"><Menu />
      <div class="content-wrapper">
        <div class="card text-center">
          <div class="card-header"></div>
          <div class="card-body">
          <div class="alert alert-primary" role="alert">รถที่ค้นหา</div>
            <div class="row" >
            <div class="col-3" v-for="i in datas">
                <div class="card mx-auto text-center border border-primary" style="width: 18rem">
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
                    <a href="#" class="btn btn-primary" @click="detail(i.id)">
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-zoom-in" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                      <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
                      <path d="M10.344 11.742c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1 6.538 6.538 0 0 1-1.398 1.4z"/>
                      <path fill-rule="evenodd" d="M6.5 3a.5.5 0 0 1 .5.5V6h2.5a.5.5 0 0 1 0 1H7v2.5a.5.5 0 0 1-1 0V7H3.5a.5.5 0 0 1 0-1H6V3.5a.5.5 0 0 1 .5-.5z"/>
                    </svg> ดูรายละเอียด</a>
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
    if(localStorage.getItem("model")==0 && localStorage.getItem("price")==1000000000)
    {
      await axios
      .post("http://localhost:80/select_seach_all.php")
      .then((response) => {
        response.data.forEach((element) => {
          
          console.log(element);
          this.datas.push(element);
        });
      })
      .catch(function(error) {
        console.log(error);
      });
    }
    else if(localStorage.getItem("model")==0 && localStorage.getItem("price")!=1000000000)
    {
      data.append("price",localStorage.getItem("price"));
      await axios
      .post("http://localhost:80/select_seach_price.php",data)
      .then((response) => {
        response.data.forEach((element) => {
          
          console.log(element);
          this.datas.push(element);
        });
      })
      .catch(function(error) {
        console.log(error);
      });
    }
    else{
      data.append("model",localStorage.getItem("model"));
    data.append("price",localStorage.getItem("price"));
    await axios
      .post("http://localhost:80/select_seach.php",data)
      .then((response) => {
        response.data.forEach((element) => {
          
          console.log(element);
          this.datas.push(element);
        });
      })
      .catch(function(error) {
        console.log(error);
      });
    }
    
      
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
