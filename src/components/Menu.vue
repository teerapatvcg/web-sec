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
        
      </form>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
      <div class="btn-group">
      
                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-if="islogin">
                  Management
                  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-tools" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M0 1l1-1 3.081 2.2a1 1 0 0 1 .419.815v.07a1 1 0 0 0 .293.708L10.5 9.5l.914-.305a1 1 0 0 1 1.023.242l3.356 3.356a1 1 0 0 1 0 1.414l-1.586 1.586a1 1 0 0 1-1.414 0l-3.356-3.356a1 1 0 0 1-.242-1.023L9.5 10.5 3.793 4.793a1 1 0 0 0-.707-.293h-.071a1 1 0 0 1-.814-.419L0 1zm11.354 9.646a.5.5 0 0 0-.708.708l3 3a.5.5 0 0 0 .708-.708l-3-3z"/>
                    <path fill-rule="evenodd" d="M15.898 2.223a3.003 3.003 0 0 1-3.679 3.674L5.878 12.15a3 3 0 1 1-2.027-2.027l6.252-6.341A3 3 0 0 1 13.778.1l-2.142 2.142L12 4l1.757.364 2.141-2.141zm-13.37 9.019L3.001 11l.471.242.529.026.287.445.445.287.026.529L5 13l-.242.471-.026.529-.445.287-.287.445-.529.026L3 15l-.471-.242L2 14.732l-.287-.445L1.268 14l-.026-.529L1 13l.242-.471.026-.529.445-.287.287-.445.529-.026z"/>
                  </svg>
                </button>
                <div class="dropdown-menu ">
                  <a class="dropdown-item" href="/insert">Insert</a>
                  <a class="dropdown-item" href="/edit">Edit</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="/home_edit">Edit Home</a>
                  <a class="dropdown-item" href="/con_edit">Edit Contact</a>
                </div>
              </div>
              
      <button class="btn btn-danger ml-3" @click="logout" v-if="islogin">Logout 
      <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-power" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" d="M5.578 4.437a5 5 0 1 0 4.922.044l.5-.866a6 6 0 1 1-5.908-.053l.486.875z"/>
        <path fill-rule="evenodd" d="M7.5 8V1h1v7h-1z"/>
      </svg>
</button>
    </ul>
      
    </nav>
    <aside class="main-sidebar elevation-4 text-left">
      <!-- Brand Logo -->
      <a href="/main" class="brand-link">
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
          <div class="image" v-if="islogin">
            <img
              src="dist/img/user2-160x160.jpg"
              class="img-circle elevation-2"
              alt="User Image"
            />
          </div>
          <div class="info" v-if="islogin">
            <a href="#" class="d-block">Admin</a>
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
              <br>
              <button
                type="submit"
                class="btn btn-warning"
                @click="ci_promotion"
              >
                ค้นหา
              </button>

              <br>
              <br>
              <br>
              <br>
              <br>
              <br>
            </ul>
          </form>
          
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
        //alert("No Logged /in");
       
      } else {
        //alert("Logged in");
        this.islogin = true;
      }
    });
  },
  methods: {
    logout() {
     // alert(123456);
      firebase
        .auth()
        .signOut()
        .then((res) => {
          this.$router.replace("/login");
          //alert(res);
        });
    },
    ci_home() {
      window.location.href = "/main";
    },
    ci_contact() {
      window.location.href = "/show_con";
    },
    ci_promotion() {
      window.location.href = "/show_pro";
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
