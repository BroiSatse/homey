import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.autogrow()
  }
  autogrow () {
    this.element.height = "auto";
    this.element.height = this.scrollHeight + "px";
  }
}
