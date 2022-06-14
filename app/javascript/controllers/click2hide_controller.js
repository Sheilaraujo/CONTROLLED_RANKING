import { Controller } from "@hotwired/stimulus"

// <div data-controller="click2hide">
// <button data-action="click->click2hide#dismiss">
//   Close
// </button>

export default class extends Controller {
  connect() {
    console.log("click2hide controller connected")
  }

  dismiss () {
    this.element.remove();
  }
}
