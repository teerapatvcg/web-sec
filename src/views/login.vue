<template>
    <div class="login-page">
        <div class="form">
          <form class="login-form" @submit="login">
            <h1>LOGIN</h1>
            <input type="email"
            id="email"
            name="login"
            v-model="email"
            placeholder="email"/>
            <input type="password"
            id="password"
            name="password"
            v-model="password"
            placeholder="password"/>
            <button type="submit">login</button>
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
  methods: {
    login(e) {
      firebase
        .auth()
        .signInWithEmailAndPassword(this.email, this.password)
        .then(
          (user) => {
            var user = firebase.auth().currentUser;
            console.log(user);
            if (user != null) {
              swal("Login success", {
                    icon:"success",
                    buttons: false,
                    timer: 1800,
                  });
              setTimeout(() => {
                          
                        }, 2000);
              this.$router.replace("/main");
            }
          },
          (err) => {
            //alert(err.message);
            swal("Login error", {
                    icon:"error",
                    buttons: false,
                    timer: 1800,
                  });
              setTimeout(() => {
                        }, 2000);
          }
        );
      e.preventDefault();
    },
  },
};
</script>

<style>

</style>
