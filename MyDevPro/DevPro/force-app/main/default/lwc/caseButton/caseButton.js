import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class NavigateToAccNew extends NavigationMixin(LightningElement) {
    NavigateToNew(){
        this[NavigationMixin.Navigate]({
            type:'standard__objectPage',
            attributes:{
                objectApiName:'Case',
                actionName:'new'
            },
            state: {
                defaultFieldValues: '',
                nooverride: '1'
            }
 
        });
    }
}