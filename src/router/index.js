import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import firebase from "firebase";
Vue.use(VueRouter)
function check(to, from, next) {
  
  firebase.auth().onAuthStateChanged((user) => {
    // alert(user);
    if (!user) {
      //alert("No Logged /in");
      next({
        path: "/login",
      });
    } else {
      //alert("Logged in");
      next();
    }
  });
}
const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',

  
    component: () => import( '../views/About.vue')
  }
  ,
  {
    path: '/login',
    name: 'login',
    component: () => import( '../views/login.vue')
  }
  ,
  {
    path: '/main',
    name: 'main',
    component: () => import( '../views/mainfirst.vue')
  }
  ,
  {
    path: '/edit',
    name: 'edit',
    beforeEnter: check,
    component: () => import( '../views/edit.vue')
  }
  ,
  {
    path: '/insert',
    name: 'insert',
    beforeEnter: check,
    component: () => import( '../views/insert.vue')
  }
  ,
  {
    path: '/edit_view',
    name: 'edit_view',
    beforeEnter: check,
    component: () => import( '../views/edit_view.vue')
  }
  ,
  {
    path: '/test',
    name: 'test',
    component: () => import( '../views/test.vue')
  }
  ,
  {
    path: '/con_edit',
    name: 'con_edit',
    beforeEnter: check,
    component: () => import( '../views/con_edit.vue')
  }
  ,
  {
    path: '/promo_edit',
    name: 'promo_edit',
    component: () => import( '../views/promo_edit.vue')
  }
  ,
  {
    path: '/home_edit',
    name: 'home_edit',
    beforeEnter: check,
    component: () => import( '../views/home_edit.vue')
  }
  ,
  {
    path: '/seach',
    name: 'seach',
    beforeEnter: check,
    component: () => import( '../views/seach.vue')
  }
  ,
  {
    path: '/show_con',
    name: 'show_con',
    component: () => import( '../views/show_con.vue')
  }
  ,
  {
    path: '/show_pro',
    name: 'show_pro',
    component: () => import( '../views/show_pro.vue')
  }
  ,
  {
    path: '/show_car',
    name: 'show_car',
    component: () => import( '../views/show_car.vue')
  }
  ,
  {
    path: '/show_allcar',
    name: 'show_allcar',
    component: () => import( '../views/show_allcar.vue')
  }
]

const router = new VueRouter({
  mode:"history",
  routes
})

export default router
