import { LightningElement } from 'lwc';

export default class NewCasePage extends LightningElement {
    CaseNumber;
   handleSuccess(event) {
       this.CaseNumber = event.target.CaseNumber;
    }
}