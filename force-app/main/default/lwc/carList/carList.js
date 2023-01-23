import { LightningElement, wire } from 'lwc';
import getAllCars from '@salesforce/apex/CarServices.getAllCars';

export default class CarList extends LightningElement {
    @wire(getAllCars) cars;
}