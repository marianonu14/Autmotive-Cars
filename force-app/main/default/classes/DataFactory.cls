public class DataFactory {
  public static void createCar(
    String name,
    Integer price,
    String seller,
    String image,
    String brand
  ) {
    Car__c newCar = new Car__c();

    newCar.Name = name;
    newCar.Price__c = price;
    newCar.Seller__c = seller;
    newCar.Brand__c = brand;
    newCar.Image_URL__c = image;

    insert newCar;
  }

  public static void createBrand(String brandName) {
    Brand__c newBrand = new Brand__c();

    newBrand.name = brandName;

    insert newBrand;
  }

  public static void createBranchOffice(
    String officeName,
    Integer latitude,
    Integer longitude
  ) {
    Branch_Office__c newOffice = new Branch_Office__c();

    newOffice.name = officeName;
    newOffice.Location__Latitude__s = latitude;
    newOffice.Location__Longitude__s = longitude;

    insert newOffice;
  }
}
