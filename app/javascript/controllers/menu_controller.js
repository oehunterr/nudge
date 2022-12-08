import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="menu"
export default class extends Controller {
  static targets = ["menuContent"]
  connect() {
    console.log("Hello")
  }
  change() {
    this.menuContentTarget.classList.toggle("d-none")
  }
}
