import {Controller} from "@hotwired/stimulus"
import Trix from "trix"

const {lang} = Trix.config;

// Connects to data-controller="trix-toolbar"
export default class extends Controller {
	connect() {
		console.log("trix-toolbar")

		// /* What the newly created button does */
		// Trix.config.textAttributes.red = {
		//     style: { color: "red" },
		//     parser: (element) => element.style.color === "red",
		//     inheritable: true
		// }

		// /* Insert the button visual in the default toolbar */
		// addEventListener("trix-initialize", function(event) {
		//     var buttonHTML = '<button type="button" class="trix-button" data-trix-attribute="red">RED</button>'

		//     event.target.toolbarElement.
		//     	querySelector(".trix-button-group").
		//     	insertAdjacentHTML("beforeend", buttonHTML)
		// })

		// ===============

		// Grab a reference to the toolbar(s) on the page.
        const toolbar = this.element.previousSibling

        // HTML for our buttons
        const h2ButtonHTML = '<button type="button" class="trix-button" data-trix-attribute="heading" title="Subheading">H2</button>'
        const h3ButtonHTML = '<button type="button" class="trix-button" data-trix-attribute="subHeading" title="Subheading">H3</button>'

        // Only apply event listeners once to the toolbars
        addEventListener("trix-initialize", (event) => {
            const sibling1 = toolbar.querySelector(".trix-button--icon-increase-nesting-level")
            sibling1.insertAdjacentHTML("afterend", h2ButtonHTML)
            const sibling2 = toolbar.querySelector("[data-trix-attribute='heading']")
            sibling2.insertAdjacentHTML("afterend", h3ButtonHTML)
        }/*, {once: true}*/)

        console.log("trix-toolbar-post")
	}

	disconnect () {}
}
