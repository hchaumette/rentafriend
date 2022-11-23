import { Controller } from "@hotwired/stimulus"
import Glide from '@glidejs/glide'

// Connects to data-controller="carousel"
export default class extends Controller {
  static values = {
    number: Number
  }

  connect() {
    let glide = new Glide(`.glide${this.numberValue}`, {
      type: 'carousel',
      perView: 3,
      focusAt: 'center',
      breakpoints: {
        800: {
          perView: 2
        },
        480: {
          perView: 1
        }
      }
    })

    glide.mount()
  }

}
