// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>


import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  connect() {
    this.outputTarget.textContent = 'Hello, Stimulus!'
  }
}

// vou testar este código para organizar o simple_form horizontal
// mas acho que este código serve apenas para a mask do CPF
// ass.:Cintia
// com o código que copiei, não aparece o calendário
// Vou voltar para o original
// window.$ = window.jQuery = require('jquery');
// require("jquery-mask-plugin");

// import { Controller } from "@hotwired/stimulus"

// export default class extends Controller {
//   connect() {
//     this.maskFields();
//   }

//   maskFields() {
//     $('[data-masks-target="phone"]').mask('(00) 00000-0009');
//     $('[data-masks-target="cpf"]').mask('000.000.000-00');;
//   }
// }
