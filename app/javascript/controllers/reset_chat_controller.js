import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reset-chat"
export default class extends Controller {
  static targets = ["input"];

  connect() {
    this.inputTarget.value = "";
  }
}
