<template>
  <div>
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->

      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"
            ><i class="fas fa-bars"></i
          ></a>
        </li>
      </ul>

      <!-- SEARCH FORM -->
      <form class="form-inline ml-3">
        <div class="btn-group" role="group" aria-label="Basic example">
          <button type="button" class="btn btn-primary" @click="ci_home">
            Home
          </button>
          <button type="button" class="btn btn-success" @click="ci_contact">
            Contact
          </button>
          <button type="button" class="btn btn-danger" @click="ci_promotion">
            Promotion
          </button>
        </div>
      </form>

      <!-- Right navbar links -->
    </nav>
    <aside class="main-sidebar elevation-4 text-left">
      <!-- Brand Logo -->
      <a href="index3.html" class="brand-link">
        <img
          src="dist/img/AdminLTELogo.png"
          alt="AdminLTE Logo"
          class="brand-image img-circle elevation-3"
          style="opacity: 0.8"
        />
        <span class="brand-text font-weight-light">Honda Second</span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="image">
            <img
              src="dist/img/user2-160x160.jpg"
              class="img-circle elevation-2"
              alt="User Image"
            />
          </div>
          <div class="info">
            <a href="#" class="d-block">Alexander Pierce</a>
            <br />
          </div>
        </div>
        <div class="row">
          <div class="col text-center">
            <button type="button" class="btn btn-primary butt" @click="ci_home">
              Home
            </button>
            <br />
            <br />
            <button
              type="button"
              class="btn btn-success butt"
              @click="ci_contact"
            >
              Contact
            </button>
            <br />
            <br />
            <button
              type="button"
              class="btn btn-danger butt"
              @click="ci_promotion"
            >
              Promotion
            </button>
            <br />
            <br />
          </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <form action="">
            <ul
              class="nav nav-pills nav-sidebar flex-column"
              data-widget="treeview"
              role="menu"
              data-accordion="false"
            >
              <div class="form-group ml-3 mr-3 text-center">
                <label for="exampleFormControlSelect1" style="color: black"
                  >รุ่น</label
                >
                <select
                  class="form-control"
                  id="exampleFormControlSelect1"
                  placeholder="name@example.com"
                >
                  <option style="color: blue" value="" selected>-</option>
                  <option value="Accord">Accord</option>
                  <option value="Airwave">Airwave</option>
                  <option value="BR-V">BR-V</option>
                  <option value="Brio">Brio</option>
                  <option value="City">City</option>
                  <option value="Civic">Civic</option>
                  <option value="CR-V">CR-V</option>
                  <option value="CR-X del Sol">CR-X del Sol</option>
                  <option value="CR-Z">CR-Z</option>
                  <option value="e">e</option>
                  <option value="Freed">Freed</option>
                  <option value="HR-V">HR-V</option>
                  <option value="Integra">Integra</option>
                  <option value="Jazz">Jazz</option>
                  <option value="Legend">Legend</option>
                  <option value="Mobilio">Mobilio</option>
                  <option value="N-BOX">N-BOX</option>
                  <option value="N-ONE">N-ONE</option>
                  <option value="NSX">NSX</option>
                  <option value="Odyssey">Odyssey</option>
                  <option value="Prelude">Prelude</option>
                  <option value="S2000">S2000</option>
                  <option value="STEPWGN SPADA">STEPWGN SPADA</option>
                  <option value="Stream">Stream</option>
                  <option value="Today">Today</option>
                </select>
              </div>
              <div class="form-group ml-3 mr-3 text-center">
                <label for="exampleFormControlSelect1" style="color:  black"
                  >ราคา</label
                >
                <select
                  class="form-control"
                  id="exampleFormControlSelect1"
                  placeholder="name@example.com"
                >
                  <option style="color: blue" value="" selected>-</option>
                </select>
              </div>
              <br />
              <button
                type="submit"
                class="btn btn-warning"
                @click="ci_promotion"
              >
                ค้นหา
              </button>

              <br /><br /><br />
              <li class="nav-item has-treeview" v-if="islogin">
                <a href="#" class="nav-link">
                  <i class="nav-icon fas fa-table"></i>
                  <p>
                    จัดการ
                    <i class="fas fa-angle-left right"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview" style="display: none;">
                  <li class="nav-item">
                    <a href="/insert" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Insert</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="/edit" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Edit</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="/home_edit" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Edit Home</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="/con_edit" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Edit Contact</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="/promo_edit" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Edit Promotion</p>
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </form>
          <button class="btn btn-danger" @click="logout" v-if="islogin">logout</button>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>
  </div>
</template>

<script>
import Menu from "@/components/Menu";
import firebase from "firebase";
export default {
  data() {
    return {
      islogin: false,
    };
  },
  mounted() {
    firebase.auth().onAuthStateChanged((user) => {
      // alert(user);
      if (!user) {
        alert("No Logged /in");
       
      } else {
        alert("Logged in");
        this.islogin = true;
      }
    });
  },
  methods: {
    logout() {
      alert(123456);
      firebase
        .auth()
        .signOut()
        .then((res) => {
          this.$router.replace("/login");
          alert(res);
        });
    },
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

<style>
.btn-success {
  color: #fff;
  background-color: #1cc88a;
  border-color: #1cc88a;
}
.butt {
  width: 70%;
}
</style>
