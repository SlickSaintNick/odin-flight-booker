import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ["list", "template", "passenger"]

  add() {
    const passengerList = this.listTarget
    const template = this.templateTarget
    const clone = template.content.cloneNode(true)

    passengerList.appendChild(clone)
  }

  remove() {
    if (this.passengerTarget.parentNode.children.length > 1) {
      this.passengerTarget.remove()
    }
  }
}