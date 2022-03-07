import {Controller} from "@hotwired/stimulus";

// Connects to data-controller="text-counter"
export default class extends Controller {
    static targets = ["source", "output"]
    static classes = ["error"]
    static values = {
        limit: Number,
        wordMode: Boolean
    }

    connect() {
        this.sourceTarget.addEventListener('input', this.sync.bind(this))
        this.sync()
    }

    _contentLength(content, wordMode) {
        if (wordMode) content = content.split(" ")

        if (typeof content === "object" && content.length === 1 && content[0] === "")
            return 0

        return content.length
    }

    sync(_) {
        this.outputTargets.forEach(t => {
            let length = this._contentLength(this.sourceTarget.value, this.wordModeValue)
            t.textContent = `${length} ${this.wordModeValue ? "words" : "characters"}`

            if (this.limitValue)
                if (length > this.limitValue)
                    t.classList.add(...this.errorClasses)
                else
                    t.classList.remove(...this.errorClasses)
        })
    }
}
