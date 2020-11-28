<template>
  <div>
    <Menu />
    <div class="wrapper">
      <div class="content-wrapper">
        <div class="card text-center">
          <div class="card-header alert alert-primary" v-for="i in datas"><h4>{{i.Year}} Honda {{i.Model}} {{i.Detailcar}}</h4></div>
          <div class="card-body">
            <div class="row" v-for="i in datas">
              <div class="col-7">
                <br /><br />
                <div class="card mx-auto" style="height=200px;width: 800px;">
                  <div class="row">
                    <div class="col-12 mx-auto mb-5">
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
                          <div class="carousel-item active">
                            <img
                              :src="i.Pic1"
                              class="d-block w-100"
                              alt="..."
                             wight="325px"
                              height="470px"
                            />
                          </div>
                          <div class="carousel-item">
                            <img
                              :src="i.Pic2"
                              class="d-block w-100"
                              alt="..."
                             wight="325px"
                              height="470px"
                            />
                          </div>
                          <div class="carousel-item">
                            <img
                              :src="i.Pic3"
                              class="d-block w-100"
                              alt="..."
                              wight="325px"
                              height="470px"
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
                </div>
                <div class="card mx-auto" style="height=200px;width: 800px;">
                  <div class="row  alert alert-info">
                    <div class="col-6 mx-auto " >
                      <div class="" role="alert">
                        รายละเอียด
                      </div>
                    </div>
                  </div>
                  <div class="row" v-for="i in datas">
                    <div class="col-6 mx-auto">
                      <label for="">{{i.Detail}}</label>
                    </div>
                  </div>
                  <br>
                </div>
              </div>
              <div class="col-5" v-for="i in datas">
                <div class="card mx-auto" style="width: 60%;">
                  <div class="card-body">
                    <div class="row">
                      <div class="col ">
                        <form action="#">
                          <div class="row">
                            <div class="col-6 ">
                              <div class="alert alert-info " role="alert">
                                รุ่น
                              </div>
                            </div>
                            <div class="col-6 ">
                              <div class="alert alert-info " role="alert">
                                ปี
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6 x">
                              <label for="">{{i.Model}}</label>
                            </div>
                            <div class="col-6">
                              <label for="" class="">{{i.Year}}</label>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col-6  mt-3">
                              <div class="alert alert-info" role="alert">
                                รายละเอียดรุ่น
                              </div>
                            </div>
                            <div class="col-6  mt-3">
                              <div class="alert alert-info" role="alert">
                                ขนาดเครื่องยนต์
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6">
                              <label for="">{{i.Detailcar}}</label>
                            </div>
                            <div class="col-6">
                              <label for=""
                                >{{i.CC}} CC</label
                              >
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6 ">
                              <div class="alert alert-info " role="alert">
                                ระบบเกียร์
                              </div>
                            </div>
                            <div class="col-6 ">
                              <div class="alert alert-info " role="alert">
                                จำนวนที่นั่ง
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6 x">
                              <label for="">{{i.Gear}}</label>
                            </div>
                            <div class="col-6">
                              <label for="" class="">{{i.Seats}}</label>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6 ">
                              <div class="alert alert-info " role="alert">
                                เลขไมล์ (กม.)
                              </div>
                            </div>
                            <div class="col-6 ">
                              <div class="alert alert-info " role="alert">
                                สี
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6 x">
                              <label for="">{{i.Mileage}}</label>
                            </div>
                            <div class="col-6">
                              <label for="" class="">{{i.Color}}</label>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6 ">
                              <div class="alert alert-info " role="alert">
                                ทะเบียน
                              </div>
                            </div>
                            <div class="col-6 ">
                              <div class="alert alert-info " role="alert">
                                จังหวัด
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6 x">
                              <label for="">{{i.Register}}</label>
                            </div>
                            <div class="col-6">
                              <label for="" class="">{{i.Province}}</label>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6 ">
                              <div class="alert alert-success " role="alert">
                                ราคา
                              </div>
                            </div>
                            <div class="col-6 ">
                              <div class="alert alert-danger " role="alert">
                                Promotion
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6 x">
                              <label for="">{{i.Price}} บาท</label>
                            </div>
                            <div class="col-6">
                              <label for="" class="">ลดราคา {{i.Promotion}} บาท</label>
                            </div>
                            <div class="col-12 ">
                              <div class="alert alert-warning " role="alert">
                                สถานะ  {{i.Status}}
                              </div>
                              
                            </div>
                          </div>
                        </form>
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
export default {
  data() {
    return {
      datas: [],
    };
  },
  async mounted() {
    const axios = require("axios");
    var data = new FormData();
    console.log(localStorage.getItem("detaill"));
    data.append("id_car",localStorage.getItem("detaill"));
    await axios
      .post("http://localhost:80/select_car.php",data)
      .then((response) => {
        response.data.forEach((element) => {
          console.log(element);
          this.datas.push(element);
        });
      })
      .catch(function(error) {
        console.log(error);
      });
    
    
    
      
  },
  components: { Menu },
};
</script>

<style>
.manu {
  width: 30%;
}
.x {
  float: right;
}
.y {
  float: left;
}
.te {
  width: 100%;
  height: 500px;
}
</style>
