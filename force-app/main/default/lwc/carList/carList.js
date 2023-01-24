import { LightningElement, wire } from "lwc";
import getAllCars from "@salesforce/apex/CarServices.getAllCars";

export default class CarList extends LightningElement {
  @wire(getAllCars) cars;

  showConsole(event) {
    const arrayDB = this.cars.data;

    arrayDB.forEach(elem => {
        if(elem.Name === event.target.value){
            console.log(elem);
        }
    })
  }
}
