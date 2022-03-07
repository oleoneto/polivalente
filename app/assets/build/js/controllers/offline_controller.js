import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="offline"
export default class extends Controller {
  static targets = ['indicator']
  
  connect() {
    // This forces an offline message even if the browser does not fire an event.
    // Like when the page is loaded from cache, for example.
    this.setNetworkStatus()

    window.addEventListener('offline', () => this.setNetworkStatus())
    window.addEventListener('online', () => this.setNetworkStatus())
  }

  setNetworkStatus() {
    this.indicatorTarget.classList.toggle('hidden', navigator.onLine)
  }
}
