class ServerConfig{
  static const domainNameServer = "http://10.0.2.2:8000";
  // static const domainNameServer = "http://127.0.0.1:8000";

  static const signInApi = '/api/login';
  static const signUpApi = '/api/register';
  static const showRentCars = "/api/app/get/getAllCarsForRent";
  static const showSaleCars = "/api/app/get/getAllCarsForSale";
  static const showAccessories = "/api/app/get/getAllAccessories";
  static const getColorsByCarId = "/api/app/get/getColorsByCarId?carId=";
  static const getSaleCarById = "/api/app/get/getCarForSaleById?carId=";
  static const getRentCarById = "/api/app/get/getCarForRentById?carId=";
  static const getReservedDays = "/api/getReservedDaysWithCarInfo/";
}