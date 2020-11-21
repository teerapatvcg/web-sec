<template>
  <div>
    <div class="wrapper"><Menu />
      <div class="content-wrapper">
        <div class="card text-center">
          <div class="card-header"></div>
          <div class="card-body">
          <div class="alert alert-danger" role="alert">รถจัด Promotion</div>
            <div class="row">
              <div class="col-3">
                <div class="card mx-auto text-center" style="width: 18rem">
                  <img src="../assets/mit.png" class="card-img-top" alt="..." />
                  <div class="card-body">
                    <h5 class="card-title-center">Mitsubishi</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-primary">Mitsubishi</a>
                  </div>
                </div>
              </div>
              <div class="col-3">
                <div class="card mx-auto" style="width: 18rem">
                  <img src="../assets/bmw.png" class="card-img-top" alt="..." />
                  <div class="card-body">
                    <h5 class="card-title-center">BMW</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-primary">BMW</a>
                  </div>
                </div>
              </div>
              <div class="col-3">
                <div class="card mx-auto" style="width: 18rem">
                  <img
                    src="../assets/benz.png"
                    class="card-img-top"
                    alt="..."
                  />
                  <div class="card-body">
                    <h5 class="card-title-center">Benz</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-primary">Benz</a>
                  </div>
                </div>
              </div>
              <div class="col-3">
                <div class="card mx-auto" style="width: 18rem">
                  <img src="../assets/c.png" class="card-img-top" alt="..." />
                  <div class="card-body">
                    <h5 class="card-title-center">Chevrolet</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-primary">Chevrolet</a>
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
