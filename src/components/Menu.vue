<template>
  <div>
    <nav class="main-header navbar navbar-expand navbar-dark navbar-dark">
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
                  <a class="dropdown-item" href="/insert">
                  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-up-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
                  </svg> Insert</a>
                  <a class="dropdown-item" href="/edit">
                  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-table" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/>
                  </svg> Edit</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="/home_edit">
                  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-house-door" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M7.646 1.146a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5H9.5a.5.5 0 0 1-.5-.5v-4H7v4a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6zM2.5 7.707V14H6v-4a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v4h3.5V7.707L8 2.207l-5.5 5.5z"/>
                    <path fill-rule="evenodd" d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                  </svg> Edit Home</a>
                  <a class="dropdown-item" href="/con_edit">
                  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-telephone-plus-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM12.5 1a.5.5 0 0 1 .5.5V3h1.5a.5.5 0 0 1 0 1H13v1.5a.5.5 0 0 1-1 0V4h-1.5a.5.5 0 0 1 0-1H12V1.5a.5.5 0 0 1 .5-.5z"/>
                  </svg> Edit Contact</a>
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
    <aside class="main-sidebar elevation-4 text-left sidebar-dark-primary ">
      <!-- Brand Logo -->
      <a href="/main" class="brand-link ">
        <img
          src="../assets/tf2car2.png"
          style="opacity: 0.8"
          class="ml-4"
        />
      </a> 

      <!-- Sidebar -->
      <div class="sidebar" >
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 d-flex" v-if="islogin">
          <div class="info mx-auto" >
            <a href="#" class="d-block">Admin</a>
          </div>
        </div>
        <div class="row">
          <div class="col text-center">
          <br>
            <button type="button" class="btn btn-primary butt" @click="ci_home">
              <svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-house-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M8 3.293l6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
              </svg>
            </button>
            <br />
            <br />
            <button
              type="button"
              class="btn btn-success butt"
              @click="ci_contact"
            >
              <svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-telephone" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
              </svg>
            </button>
            <br />
            <br />
            <button
              type="button"
              class="btn btn-danger butt"
              @click="ci_promotion"
            ><svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-lightning-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M11.251.068a.5.5 0 0 1 .227.58L9.677 6.5H13a.5.5 0 0 1 .364.843l-8 8.5a.5.5 0 0 1-.842-.49L6.323 9.5H3a.5.5 0 0 1-.364-.843l8-8.5a.5.5 0 0 1 .615-.09z"/>
              </svg>
              Promotion
            </button>
            <br />
            <br />
          </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          
            <ul
              class="nav nav-pills nav-sidebar flex-column"
              data-widget="treeview"
              role="menu"
              data-accordion="false"
            >
              <div class="form-group ml-3 mr-3 text-center">
                <label for="exampleFormControlSelect1" style="color: white"
                  >รุ่น</label
                >
                <select
                  class="form-control"
                  id="model"
                  name="Model"
                  placeholder="name@example.com"
                >
                  <option value=0 disabled selected>-</option>
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
                <label for="exampleFormControlSelect1" style="color:  white"
                  >ราคา</label
                >
                <select
                  class="form-control"
                  id="price"
                  name="price"
                  placeholder="name@example.com"
                >
                  <option value=1000000000 disabled selected>-</option>
                  <option value=100000>น้อยกว่า 100,000</option>
                  <option value=300000>น้อยกว่า 300,000</option>
                  <option value=500000>น้อยกว่า 500,000</option>
                  <option value=700000>น้อยกว่า 700,000</option>
                  <option value=1000000>น้อยกว่า 1,000,000</option>
                 
                </select>
              </div>
              <br>
              <button
                class="btn btn-warning"
                @click="seach"
              ><svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
                  <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
                </svg>
                ค้นหา
              </button>

              <br>
              <br>
              <br>
              <br>
              <br>
              <br>
            </ul>
          
          
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
    seach(){
      localStorage.setItem("model",document.querySelector("select[name=Model]").value);
      localStorage.setItem("price",document.querySelector("select[name=price]").value);
      console.log(document.querySelector("select[name=Model]").value);
      console.log(document.querySelector("select[name=price]").value);
       window.location.href = "/show_allcar";
    }
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
