import {Controller} from '@hotwired/stimulus'

export default class extends Controller {
    static targets = ["theme", "toggle"]

    get shouldEnable() {
        if (!this['hasToggleTarget']) {
            console.debug('No toggle component found for theme controller');
            return false;
        }

        return true;
    }

    connect() {
        this.loadTheme();

        if (!this.shouldEnable) return;

        this.theme = localStorage.theme;
        this['themeTarget'].classList = [this.theme];
    }

    toggleTheme(event) {
        this.theme = event.target.value;
        localStorage.theme = this.theme;
        this['themeTarget'].classList = [this.theme];
    }

    loadTheme() {
        this.theme = localStorage.theme;
        this['themeTarget'].classList = [this.theme];

        if (this['hasToggleTarget']) this['toggleTarget'].value = this.theme;
    }
}
