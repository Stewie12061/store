import { Controller } from "stimulus"
import Splide from '@splidejs/splide'



export default class extends Controller {
  static targets = ['container']

  connect() {
    this.initSplide()
  }


  initSplide() {
    let id = this.containerTarget.getAttribute('id')
    let selector = `#${id}`
    let splide = new Splide(selector, {
      type: 'loop' ,
      autoplay: true,
      speed: 100,
      cover: true,
      lazyLoad: 'nearby',
      pauseOnFocus: true
    })
    if(splide){      
      splide.mount()
    }
    
  }
}