public with sharing class CarServices {

    @AuraEnabled(cacheable = true)
    public static List<Car__c> getAllCars(){
        return [SELECT Id, Name, Image_URL__c, Price__c FROM Car__c];
    }
}