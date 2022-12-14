import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="submit"
export default class extends Controller {
  static targets = ["checkbox", "form"]

  connect() {
    console.log("Hi")
  }
  submitForm(event) {
    event.preventDefault()

  fetch(this.formTarget.action, {
    method: "PATCH",
    headers: { "Accept": "application/json" },
    body: new FormData(this.formTarget)
  })
    .then(response => response.json())
    .then(() => {
      console.log("after response")
      // this.checkboxTarget.insertAdjacentHTML("beforeend", data.inserted_item)
      // this.checkboxTarget.classList.toggle("d-none")
      // console.log(this.checkboxTarget)
    })
  }
}
