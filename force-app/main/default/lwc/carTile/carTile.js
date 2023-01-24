import { LightningElement, api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class CarTile extends NavigationMixin(LightningElement) {
    @api car;

    navigateToRecordViewPage() {
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: this.car.Id,
                objectApiName: 'Car__c',
                actionName: 'view'
            }
        });
    }
}