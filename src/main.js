import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import firebase from 'firebase/app'

Vue.config.productionTip = false
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const config = {
  apiKey: "AIzaSyDLg_fqPyMOMV-mIwf8dyUBkEnVnKVZugo",
  authDomain: "login-web-3c9bb.firebaseapp.com",
  databaseURL: "https://login-web-3c9bb.firebaseio.com",
  projectId: "login-web-3c9bb",
  storageBucket: "login-web-3c9bb.appspot.com",
  messagingSenderId: "578314355587",
  appId: "1:578314355587:web:36ef0b943cf374913e6cb6",
  measurementId: "G-MP1VS19DD2"
};
firebase.initializeApp(config)
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
