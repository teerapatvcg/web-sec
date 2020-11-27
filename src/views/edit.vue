<template>
  <div><Menu />
    <div class="wrapper">
      <div class="content-wrapper">
        <div class="card">
          <div class="card-header text-center">
            <h3 class="card-title ">ตารางรถทั้งหมด</h3>
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
                    <thead class="bg-info">
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
                          สถานะ
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="example1"
                          rowspan="1"
                          colspan="1"
                          aria-label="CSS grade: activate to sort column ascending"
                        >
                          แก้ไขรูป
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="example1"
                          rowspan="1"
                          colspan="1"
                          aria-label="CSS grade: activate to sort column ascending"
                        >
                          แก้ไขข้อมูล
                        </th>
                        <th
                          class="sorting"
                          tabindex="0"
                          aria-controls="example1"
                          rowspan="1"
                          colspan="1"
                          aria-label="CSS grade: activate to sort column ascending"
                        >
                          ลบ
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="i in datas">
                        <td class="" tabindex="0">{{i.id}}</td>
                        <td>{{i.Model}}</td>
                        <td>{{i.Register}}</td>
                        <td class="sorting_1">{{i.Status}}</td>
                        <td class="sorting_1">
                            <button type="button" class="btn btn-success" @click="ci_img(i.id)">
                              แก้ไข รูป
                            </button>
                           </td>
                        <td>
                          <button type="button" class="btn btn-warning" @click="ci_edit(i.id)">
                              แก้ไข
                            </button>
                        </td>
                        <td>
                          <button type="button" class="btn btn-danger" @click="ci_delete(i.id)">
                              ลบ
                            </button>
                        </td>
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
  data() {
    return {
      datas: [],
    };
  },
  async mounted() {
    const axios = require("axios");
    await axios
      .get("http://localhost:80/selectedit.php")
      .then((response) => {
        response.data.forEach((element) => {
          // console.log(element.first_name);
          this.datas.push(element);
        });
      })
      .catch(function(error) {
        // handle error
        console.log(error);
      });
      $(function() {
      $("#example1").DataTable({
        responsive: true,
        autoWidth: false,
      });
    });
  },
  methods: {
    ci_img(id_car_img) {
      localStorage.setItem("id_car_img",id_car_img);
      window.location.href = "/edit_img";
    },
    
      ci_edit(edit_id) {
      localStorage.setItem("edit_id",edit_id);
      window.location.href = "/edit_view";
    },
    
    ci_delete(deletee) {
      const axios = require("axios");
      var data = new FormData();
      localStorage.setItem("delete1",deletee);
      data.append("id_carr",localStorage.getItem("delete1"));
      axios.post("http://localhost:80/delete_car.php", data)
          .then((response) => {
            console.log(response.data);
            console.log(count);
          });
          swal("ลบสำเร็จ", {
            icon:"success",
            buttons: false,
            timer: 1800,
          });
      setTimeout(() => {
                          window.location.href = "/edit";
                        }, 2000);
    },
  },
  components: { Menu },
  
};

</script>

<style></style>
