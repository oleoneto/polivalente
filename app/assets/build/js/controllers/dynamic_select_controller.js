import { Controller } from "@hotwired/stimulus"
import { get as request } from "@rails/request.js"

// Connects to data-controller="dynamic-select"
export default class extends Controller {
    static targets = ['select']

    static values = {
        url: String,
        param: String
    }

    change(event) {
        let params = new URLSearchParams()
        params.append(this.paramValue, event.target.selectedOptions[0].value)
        params.append('target', this.selectTarget.id)

        request(`${this.urlValue}?${params}`, {
            responseKind: 'turbo-stream'
        })
    }
}
