import { Controller } from "@hotwired/stimulus"
import Tribute from "tributejs"
import Trix from "trix"

// Connects to data-controller="trix-autocomplete"
export default class extends Controller {
    static values = {
        url: String,
        searchKey: String,
        mode: String,
        trigger: String,
        auto: Boolean
    }

    connect() {
        console.debug("trix-autocomplete")

        if (!this.searchKeyValue)
            this.searchKeyValue = 'query'

        if (!this.modeValue)
            this.modeValue = this.element.editor ? 'trix' : 'input'

        if (!this.urlValue) {
            console.debug("Autocomplete needs both URL value (i.e. 'https://autocomplete.com')")
            return this.disconnect()
        }

        this.initializeTribute()
        this.listen()
    }

    disconnect() {
        this.tribute.detach(this.element)
    }

    initializeTribute() {
        this.tribute = new Tribute({
            trigger: this.triggerValue || '@',
            allowSpaces: true,
            lookup: "name",
            fillAttr: this.modeValue === 'trix' ? 'value' : 'name',
            autocompleteMode: this.autoValue,
            replaceTextSuffix: ', ',
            values: this._fetch.bind(this)
        })
        this.tribute.attach((this.element))
        this.tribute.range.pasteHtml = this._pasteHTML.bind(this)
    }

    listen() {
        this.element.addEventListener("tribute-replaced", (event) => {
            let completion = event.detail.item.original

            if (this.modeValue === 'trix')
                this._insertTrixAttachment(completion)
        })
    }

    _fetch(value, callback) {
        let params = new URLSearchParams()
        params.append(this.searchKeyValue, value)

        fetch(`${this.urlValue}?${params}`)
            .then(response => response.json())
            .then(data => callback(data))
            .catch(callback([]))
    }

    _insertTrixAttachment(completion) {
        let attachment = new Trix.Attachment({
            sgid: completion.sgid,
            content: completion.content
        })
        this.element.editor.insertAttachment(attachment)
        this.element.editor.insertString("")
    }

    _pasteHTML(_, start, end) {
        let range = this.element.editor.getSelectedRange()
        let position = range[0]
        let length = end - start
        this.element.editor.setSelectedRange([position - length, position])
        this.element.editor.deleteInDirection('backward')
    }
}
