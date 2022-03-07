import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="trix-attachment-blocker"
export default class extends Controller {
  static targets = []

  connect() {
    console.log("trix-attachment-blocker")

    window.addEventListener('trix-file-accept', (event) => {
      event.preventDefault()
      alert("File attachments are not supported at this time.")
    })
  }
}
