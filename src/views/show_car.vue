<template>
  <div><Menu />
    <div class="wrapper">
      <div class="content-wrapper">
        <div class="card text-center">
          <div class="card-header"></div>
          <div class="card-body">
          <div class="card mx-auto" style="width: 50%;">
              <div class="card-body">
              <div class="row">
              <div class="col-12 mx-auto  mt-5 mb-5">
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
                        src="../assets/1.jpg"
                        class="d-block w-100"
                        alt="..."
                        wight="150px"
                        height="300px"
                      />
                    </div>
                    <div class="carousel-item">
                      <img
                        src="../assets/2.jpg"
                        class="d-block w-100"
                        alt="..."
                        wight="150px"
                        height="300px"
                      />
                    </div>
                    <div class="carousel-item">
                      <img
                        src="../assets/3.jpg"
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
                <div class="row">
                  <div class="col ">
                    <form action="#">
                      <div class="row">
                        <div class="col-6 ">
                        <div class="alert alert-primary" role="alert">เบอร์โทรศัพท์</div>
                        </div>
                        <div class="col-6 ">
                          <div class="alert alert-success" role="alert">ID LINE</div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-6 x">
                          <label for="">0880054314</label>
                        </div>
                        <div class="col-6">
                          <label for="" class="">@teebangkapi</label>
                        </div>
                      </div>

                      <div class="row">
                        <div class="col-6  mt-3">
                        <div class="alert alert-info" role="alert">E-mail</div>
                        </div>
                        <div class="col-6  mt-3">
                          <div class="alert alert-info" role="alert">ที่อยู่ร้าน</div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-6">
                          <label for="">tee@hotmail.com</label>
                        </div>
                        <div class="col-6">
                          <label for="">203/139 บ้านเซนซิริ ทุ่งสุขลา ศรีราชา ชลบุรี 20230</label>
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