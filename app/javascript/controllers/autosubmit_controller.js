import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log(this.element)
  }
  submit () {
    console.log('hello')
    this.element.requestSubmit()
  }
}
