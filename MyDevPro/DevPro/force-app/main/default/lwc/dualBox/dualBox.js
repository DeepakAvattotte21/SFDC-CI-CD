import { LightningElement } from 'lwc';

export default class DualBox extends LightningElement {
    _Selected = [];
    get Options(){
        return[
            {lablel: 'English', value : 'en'},
            {lablel: 'Spanish', value : 'es'},
            {label: 'German' , value : 'de'},
        ];
    }
    get selected() {
        return this._Selected.length ? this._Selected : 'none';
    }

    handleChange(e) {
        this._Selected = e.detail.value;
    }
}