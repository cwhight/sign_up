
var submit = document.getElementById("user-sign-up")

const email = document.getElementById("email-input")

const re = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i

const enable = () => {

  email.addEventListener("keyup", (e) => {

    if (re.test(email.value)) {
      submit.disabled = false
      submit.classList.remove("disabled-button")
      submit.classList.add("btn-sign-up")
    } else {
      submit.classList.add("disabled-button")
      submit.classList.remove("btn-sign-up")
      submit.disabled = true

    }
  });

    email.addEventListener("blur", (e) => {

    if (re.test(email.value)) {
      submit.disabled = false
      submit.classList.remove("disabled-button")
      submit.classList.add("btn-sign-up")
    } else {
      submit.classList.add("disabled-button")
      submit.classList.remove("btn-sign-up")
      submit.disabled = true

    }
  });
}

export {enable}
