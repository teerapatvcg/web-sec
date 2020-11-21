<template>
  <div>
    <div class="wrapper">
      <Menu />
      <div class="content-wrapper">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Promotion</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
              <div class="row">
                <div class="col-sm-12">
                  <table
                    id="example1"
                    class="table table-bordered table-striped dataTable dtr-inline "
                    role="grid"
                    aria-describedby="example1_info"
                  >
                    <thead class="bg-danger">
                      <tr role="row">
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="example1"
                          rowspan="1"
                          colspan="1"
                          aria-label="Rendering engine: activate to sort column ascending"
                        >
                          รหัส
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="example1"
                          rowspan="1"
                          colspan="1"
                          aria-label="Browser: activate to sort column ascending"
                        >
                          รุ่น
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="example1"
                          rowspan="1"
                          colspan="1"
                          aria-label="Platform(s): activate to sort column ascending"
                        >
                          ทะเบียน
                        </th>
                        <th
                          class="sorting_desc"
                          tabindex="0"
                          aria-controls="example1"
                          rowspan="1"
                          colspan="1"
                          aria-label="Engine version: activate to sort column ascending"
                          aria-sort="descending"
                        >
                          เลือก
                        </th>
                         <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="example1"
                          rowspan="1"
                          colspan="1"
                          aria-label="Rendering engine: activate to sort column ascending"
                        >
                          เลือก
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="i in 25">
                        <td class="" tabindex="0">Webkit</td>
                        <td>Safari 3.0</td>
                        <td>OSX.4+</td>
                        <td class="sorting_1">522.1</td>
                        <td class="sorting_1"><input type="checkbox" class="form-check-input" id="exampleCheck1"></td>
                      </tr>
                    </tbody>
                    <tfoot></tfoot>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <!-- /.card-body -->
        </div>
      </div>
    </div>
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
  </div>
</template>

<script>

import firebase from "firebase";
import Menu from "@/components/Menu";
export default {
  // beforeCreate() {
  //   firebase.auth().onAuthStateChanged((user) => {
  //     if (!user) {
  //       this.$router.replace("/Login");
  //       //alert("You don't have a permission")
  //     } else {
  //       console.log(user.refreshToken);
  //     }
  //   });
  // },
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
$(function() {
  $("#example1").DataTable({
    responsive: true,
    autoWidth: false,
  });
});
</script>

<style></style>
