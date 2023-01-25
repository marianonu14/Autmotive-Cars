trigger CarTrigger on Car__c(before insert, before update) {
  if (Trigger.isInsert) {
    List<Car__c> listOfCars = Trigger.new;

    for (Car__c item : listOfCars) {
      if (item.Color__c == null) {
        item.Color__c = 'Color Undefined';
      }
    }
  }

  if (Trigger.isUpdate) {
    List<Car__c> listOfCars = Trigger.new;

    for (Car__c item : listOfCars) {
      Car__c oldCar = Trigger.oldMap.get(item.id);

      if (oldCar.Color__c != 'Color Undefined' && oldCar.Color__c != item.Color__c) {
        item.Color__c = oldCar.Color__c;
        return;
      }

      if(item.Color__c == null){
        item.Color__c = 'Color Undefined';
        return;
      }
    }
  }
}
