import { Controller } from "@hotwired/stimulus"
import Trix from "trix"

// Connects to data-controller="trix-blockcode"
export default class extends Controller {
	connect() {
		Trix.config.textAttributes.inlineCode = {
		  tagName: "code",
		  inheritable: true
		}

		window.addEventListener("trix-initialize", event => {
		  const element = event.target
		  const { toolbarElement, editor } = element

		  const blockCodeButton = toolbarElement.querySelector("[data-trix-attribute=code]")
		  const inlineCodeButton = blockCodeButton.cloneNode(true)

		  inlineCodeButton.hidden = true
		  inlineCodeButton.dataset.trixAttribute = "inlineCode"
		  blockCodeButton.insertAdjacentElement("afterend", inlineCodeButton)

		  element.addEventListener("trix-selection-change", _ => {
		    const type = getCodeFormattingType()
		    blockCodeButton.hidden = type == "inline"
		    inlineCodeButton.hidden = type == "block"
		  })

		  const getCodeFormattingType = () => {
		    if (editor.attributeIsActive("code")) return "block"
		    if (editor.attributeIsActive("inlineCode")) return "inline"

		    const range = editor.getSelectedRange()
		    if (range[0] == range[1]) return "block"

		    const text = editor.getSelectedDocument().toString().trim()
		    return /\n/.test(text) ? "block" : "inline"
		  }
		})
	}
}
