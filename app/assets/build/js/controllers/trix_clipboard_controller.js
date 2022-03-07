import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="trix-clipboard"
export default class extends Controller {
    static targets = ['code']

    get defaults() {
        return {
            actionElements: ['BUTTON'],
            codeElements: ['PRE'],
            codeClasses: ['hljs']
        }
    }

    get trix() {
        return this.element.children[0];
    }

    connect() {
        if (document.queryCommandSupported("copy")) {
            this.element.classList.add("clipboard--supported")

            this.element.addEventListener('click', (event) => {
                const {target} = event

                if (this._isActionTarget(target)) {
                    const code = this._getCodeSibling(target)
                    if (code) this.copy(code)
                }
            })
        }
    }

    _isActionTarget(element) {
        return this.defaults.actionElements.includes(element.tagName)
    }

    _getCodeSibling(element) {
        const snippet = element.nextSibling
        const isCode = this.defaults.codeElements.includes(snippet.tagName)
        const isHljs = snippet.classList.contains(this.defaults.codeClasses)

        return (isCode && isHljs) ? snippet.innerText : false
    }

    copy(code) {
        navigator.clipboard.writeText(code)
            .then(() => { console.log('Copied code snippet!') })
    }
}
