trigger CarTrigger on Car__c (before insert) {
    if(Trigger.isInsert){
        List<Car__c> listOfCars = Trigger.new;

        for(Car__c item : listOfCars){
            if(item.Color__c == null){
                item.Color__c = 'Color Undefined';
            }
        }
    }
}