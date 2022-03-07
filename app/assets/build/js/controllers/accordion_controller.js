import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="accordion"
export default class extends Controller {
  static targets = []
  
  toggle(event) {
    let accordion = event.currentTarget.parentNode
    let body = accordion.querySelectorAll('[data-role=description]')[0]
    let icons = accordion.querySelectorAll('[data-role=icon]')

    // Toggle body
    body.classList.toggle('hidden')

    // Toggle Icon
    icons.forEach(icon => icon.classList.toggle('hidden'))

    // Highlight
    accordion.classList.toggle('border-l-2')
  }
}
