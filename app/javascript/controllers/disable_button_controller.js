import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="disable-button"
export default class extends Controller {
  static targets = ["button", "link"]

  connect() {
    console.log("")
  }

  disable() {
    this.linkTarget.classList.toggle("d-none")
  }
}
