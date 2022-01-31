import { LightningElement } from 'lwc';

export default class Cal extends LightningElement {
    Input1;
    Input2;
    Result;
    showResult = false;

firstInputChange(event){
    this.Input1 = event.target.value;
}

secondInputChange(event){
    this.Input2 = event.target.value;
}

add(event){
    this.Result = Number(this.Input1) + Number(this.Input2);
    this.showResult = true;
}
sub(event){
    this.Result = Number(this.Input1) - Number(this.Input2);
    this.showResult = true;
}
mul(event){
    this.Result = Number(this.Input1) * Number(this.Input2);
    this.showResult = true;
}
div(event){
    this.Result = Number(this.Input1) / Number(this.Input2);
    this.showResult = true;
}
}