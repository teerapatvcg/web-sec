<template>
  <div>
      <div class="wrapper">
        <Menu />
    <div class="content-wrapper">
      <div class="card text-center">
  <div class="card-header">
    
  </div>
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
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="../assets/1.jpg" class="d-block w-100" alt="..." wight="150px" height="300px"/>
            </div>
            <div class="carousel-item">
              <img src="../assets/2.jpg" class="d-block w-100" alt="..." wight="150px" height="300px" />
            </div>
            <div class="carousel-item">
              <img src="../assets/3.jpg" class="d-block w-100" alt="..." wight="150px" height="300px"/>
            </div>
          </div>
          <a
            class="carousel-control-prev"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="prev"
          >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a
            class="carousel-control-next"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="next"
          >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
    <h1>รถยอดนิยม</h1>
    <div class="row">
      <div class="col-3">
        <div class="card mx-auto text-center" style="width: 18rem">
          <img src="../assets/mit.png" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title-center">Mitsubishi</h5>
            <p class="card-text">
              
            </p>
            <a href="#" class="btn btn-primary">Mitsubishi</a>
          </div>
        </div>
      </div>
      <div class="col-3">
        <div class="card mx-auto" style="width: 18rem">
          <img src="../assets/bmw.png" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title-center">BMW</h5>
            <p class="card-text">
            </p>
            <a href="#" class="btn btn-primary">BMW</a>
          </div>
        </div>
      </div>
      <div class="col-3">
        <div class="card mx-auto" style="width: 18rem">
          <img src="../assets/benz.png" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title-center">Benz</h5>
            <p class="card-text">
              
            </p>
            <a href="#" class="btn btn-primary">Benz</a>
          </div>
        </div>
      </div>
      <div class="col-3">
        <div class="card mx-auto" style="width: 18rem">
          <img src="../assets/c.png" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title-center">Chevrolet</h5>
            <p class="card-text">
              
            </p>
            <a href="#" class="btn btn-primary">Chevrolet</a>
          </div>
        </div>
      </div>
      
      </div>
  </div>
  <div class="card-footer text-muted">
    
  </div>
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
</style>