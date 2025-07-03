import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reset-chat"
export default class extends Controller {
  static targets = ["input"];

  connect() { }

  clearInput() {
    this.inputTarget.value = "";
  }
}
