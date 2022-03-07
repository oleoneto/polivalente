import {Controller} from '@hotwired/stimulus'
import { ntc as nameThatColor } from '@cosmicice/namethatcolor'

// Connects to data-controller="trix-color"
export default class extends Controller {
    get trix() {
        return this.element.children[0]
    }

    get colorTest() {
        return /color#[0-9a-f]{3,6}/gi
    }

    connect() {
        let content = this.trix.innerHTML
        this.trix.innerHTML = content.replace(this.colorTest, this._color)
    }

    _color(value, position, offset) {
        // Drop the color prefix
        const backgroundColor = value.replace('color', '')
        let c = backgroundColor.replace('#', '')

        if (c.length === 3) {
            // Support shorthand notation. i.e #c0f
            // c0f => cc00ff;
            c = `${c[0]}${c[0]}${c[1]}${c[1]}${c[2]}${c[2]}`
        }

        // YIQ color contrast calculation:
        // https://24ways.org/2010/calculating-color-contrast
        // https://gorails.com/episodes/contrasting-colors-with-yiq
        const r = parseInt(c.substr(0,2),16)
        const g = parseInt(c.substr(2,2),16)
        const b = parseInt(c.substr(4,2),16)
        const yiq = ((r*299) + (g*587) + (b*114)) / 1000
        const foregroundColor = (yiq >= 128) ? 'black' : 'white'

        const colorName = nameThatColor.name(backgroundColor).name

        return `
    <span class="tooltip border" style="background: ${backgroundColor} !important;">
        <span sr-only="${colorName}" class="tooltip-text" style="background: ${backgroundColor} !important; color: ${foregroundColor} !important;">
            ${backgroundColor} (${colorName})
        </span>
    </span>
    `
    }
}
