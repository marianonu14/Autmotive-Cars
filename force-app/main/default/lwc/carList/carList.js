import { LightningElement, wire } from "lwc";
import getAllCars from "@salesforce/apex/CarServices.getAllCars";

export default class CarList extends LightningElement {
  @wire(getAllCars) cars;
  arrayFilter = new Array("Roberto","Ismael");

  handlerChange(event) {
    const arrayDB = this.cars.data;

    arrayDB.forEach(elem => {
        if(elem.Name === event.target.value){
            console.log(elem);
            console.log(this.cars);
            console.log(this.arrayFilter);
        }
    })
  }

}
