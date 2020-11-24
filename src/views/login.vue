<template>
  <div class="home">
  <div>
    <h1>Login</h1>
    <form class="" action="#!" @submit="login">
        <div class="form-group">
            <label for="fname">Username:</label>
            <input type="email" id="email" name="login" v-model="email" placeholder="email">
        </div>
        <div class="form-group">
            <label for="lname">Password:</label>
            <input type="password" id="password"  name="password" v-model="password" placeholder="password">
        </div>
        <button type="submit" class="btn btn-primary">submit</button>
    </form>
  </div>
  </div>
</template>

<script>
import firebase from "firebase";
import swal from "sweetalert";
export default {
  name: "Login",
  data: function() {
    return { email: "", password: "" };
  },
  methods:{
    login(e){
       firebase
        .auth()
        .signInWithEmailAndPassword(this.email, this.password)
        .then(
          (user) => {
            var user = firebase.auth().currentUser;
            console.log(user);
            if (user != null) {
              swal("Good job!", "You clicked the button!", "success");
              this.$router.replace("/main");
            }
            
          },
          (err) => {
            //alert(err.message);
          }
        );
      e.preventDefault();
    }
  }

}
</script>

<style>

</style>