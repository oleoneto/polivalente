import { Application } from "@hotwired/stimulus"
window.Stimulus = Application.start()

// Application
import AccordionController from "./accordion_controller"
import DynamicSelectController from "./dynamic_select_controller"
import OfflineController from "./offline_controller"
import ReactiveTextController from "./reactive_text_controller"
import TextCounterController from "./text_counter_controller"
import ThemeController from "./theme_controller"

// Trix Text Editor (ActionText)
import TrixAttachmentBlockerController from "./trix_attachment_blocker_controller"
import TrixAutocompleteController from "./trix_autocomplete_controller"
import TrixBlockcodeController from "./trix_blockcode_controller"
import TrixClipboardController from "./trix_clipboard_controller"
import TrixColorController from "./trix_color_controller"
import TrixHighlightController from "./trix_highlight_controller"

Stimulus.register("accordion", AccordionController)
Stimulus.register("dynamic-select", DynamicSelectController)
Stimulus.register("offline", OfflineController)
Stimulus.register("reactive-text", ReactiveTextController)
Stimulus.register("text-counter", TextCounterController)
Stimulus.register("theme", ThemeController)

// Trix configuration and behavior
Stimulus.register("trix-attachment-blocker", TrixAttachmentBlockerController)
Stimulus.register("trix-autocomplete", TrixAutocompleteController)
Stimulus.register("trix-blockcode", TrixBlockcodeController)
Stimulus.register("trix-clipboard", TrixClipboardController)
Stimulus.register("trix-color", TrixColorController)
Stimulus.register("trix-highlight", TrixHighlightController)
