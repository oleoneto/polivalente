import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reactive-text"
export default class extends Controller {
    static targets = ["source", "output"]

    connect() {
        this.sourceTarget.addEventListener('input', this.sync.bind(this))
        this.outputTargets.forEach(t => t.textContent = this.sourceTarget.value)
    }

    sync(event) {
        this.outputTargets.forEach(t => t.textContent = event.target.value)
    }
}
