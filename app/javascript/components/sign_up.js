
var submit = document.getElementById("user-sign-up")

const email = document.getElementById("email-input")

const re = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i

const enable = () => {

  email.addEventListener("keyup", (e) => {

    if (re.test(email.value)) {

      submit.classList.remove("d-none")
    } else {
      submit.classList.add("d-none")

    }
  });
}



export {enable}
