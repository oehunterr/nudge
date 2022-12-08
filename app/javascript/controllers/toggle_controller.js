import { Controller } from "stimulus";

export default class extends Controller {

  toggle(e) {
    e.preventDefault();
    this.element.classList.toggle(this.cssClass);
  }

  get cssClass() {
    return this.data.get("cssClass");
  }
}
