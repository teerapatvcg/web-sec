<template>
  <div><Menu />
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
                        <div class="col-6 text-right">
                          <label for="exampleFormControlSelect1">เบอร์โทรศัพท์</label>
                        </div>
                        <div class="col-6 text-left">
                          <label for="exampleFormControlSelect1">ID LINE</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-6 x">
                          <div class="form-group">
                            <input
                            type="text"
                            class="form-control manu mx-auto x"
                            id="exampleInputEmail1"
                            />
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <input
                                type="text"
                                class="form-control manu mx-auto x"
                                id="exampleInputEmail1"
                                />
                          </div>
                        </div>
                      </div>

                      <div class="row">
                        <div class="col-6 text-right mt-3">
                          <label for="exampleInputEmail1">E-mail</label>
                        </div>
                        <div class="col-6 text-left mt-3">
                          <label for="exampleInputEmail1">ที่อยู่</label
                          >
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-6">
                          <div class="form-group">
                           <input
                            type="text"
                            class="form-control manu mx-auto x"
                            id="exampleInputEmail1"
                            />
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <input
                                type="text"
                                class="form-control manu mx-auto x"
                                id="exampleInputEmail1"
                                />
                          </div>
                        </div>
                      </div>
                      
                      <div class="row ">
                            <div class="col-6 offset-3 text-center mt-3 ">
                            <div class="form-group">
                                <button type="submit" class="btn btn-success">Success</button>
                            </div>
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

</style>