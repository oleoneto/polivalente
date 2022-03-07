import {Controller} from "@hotwired/stimulus"
import Plyr from "plyr"
import Trix from "trix"

// Connects to data-controller="trix-plyr"
export default class extends Controller {
    static targets = ['editor']

    get validContent() {
        return ['audio', 'video']
    }

    get options() {
        return {
            autopause: true,
            controls: [
                'play-large',
                'play',
                'progress',
                'current-time',
                'mute',
                'volume',
                'captions',
                'settings',
                'pip',
                'airplay',
                'fullscreen'
            ],
            settings: ['captions', 'quality', 'speed', 'loop'],
            captions: {active: true, language: 'auto'},
            fullscreen: {enabled: true, fallback: true, iosNative: false, container: null},
        }
    }

    get container() {
        return this['hasEditorTarget']
            ? this['editorTarget']
            : document.querySelector('.trix-content')
    }

    connect() {
        let isEditor = !!(this.container.attributes.contentEditable)

        // if (isEditor)
        //     this.parsePlayerInEditor()
        // else
        //     this.createPlayers()
    }

    createPlayers() {
        window.players = Array
            .from(document.querySelectorAll('audio, video'))
            .map(player => new Plyr(player, this.options))
    }

    parsePlayerInEditor() {
        window.attachments = []
        window.originalAttachments = []

        this.container.editor
            .getDocument()
            .getAttachments()
            .filter(attachment => this.validContent.includes(attachment.getContentType().split('/')[0]))
            .forEach(attachment => {
                let range = this.container.editor.getDocument().getRangeOfAttachment(attachment)
                let src = attachment.getAttributes().url
                let tag = attachment.getContentType().split('/')[0]

                let content = `<${tag} src="${src}" controls="true"></${tag}>`

                // Add Plyr attachment for preview purposes only
                this.container.editor.setSelectedRange([range[0] + 1, range[1] + 1])

                let newAttachment = new Trix.Attachment({
                    content,
                    contentType: 'plyr',
                    serialize: false,
                    trixSerialize: false
                })
                this.container.editor.insertAttachment(newAttachment)

                // window.attachments.push(newAttachment)
                // window.originalAttachments.push(attachment)
            })
    }
}
