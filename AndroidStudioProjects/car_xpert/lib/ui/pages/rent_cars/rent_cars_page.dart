import 'package:carxpert/data/models/car_model/car_model.dart';
import 'package:carxpert/data/models/color_model/color_model.dart';
import 'package:carxpert/domain/controller/rent_cars_controller.dart';
import 'package:carxpert/ui/style/widgets/header_with_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../style/widgets/costume_list.dart';

class RentCarsPage extends StatelessWidget {
  RentCarsController rentCarsController = Get.put(RentCarsController());
  List<CarModel> cars = [
    CarModel(
        brand: 'Kia',
        name: 'Rio',
        photos: [
          'assets/images/rent_cars/kia_car_1.jpg',
          'assets/images/rent_cars/kia_car_1.jpg'
        ],
        productionYear: '2001',
        carTransmission: 'Mechanical',
        propulsionType: 'Front-Wheel Drive',
        engineType: 'Gasoline Engine',
        engineSize: 1,
        fuelTankCapacity: 30,
        fuelEfficiency: 5,
        mileage: 120,
        colors: [
          ColorModel(name: Color(0xff2b1894), quantity: 1),
        ],
        numberOfRentedTimes: 5,
        price: 50),
    CarModel(
        brand: 'Honda',
        name: 'Civic',
        photos: ['assets/images/rent_cars/honda_car_1.jpg'],
        productionYear: '2001',
        carTransmission: 'Automatic',
        propulsionType: 'Rear-Wheel Drive',
        engineType: 'Diesel Engine',
        engineSize: 5,
        fuelTankCapacity: 40,
        fuelEfficiency: 8,
        mileage: 200,
        colors: [
          ColorModel(name: Color(0xff2b1894), quantity: 1),
        ],
        numberOfRentedTimes: 22,
        price: 60),
    CarModel(
        brand: 'Audi',
        name: 'A3',
        photos: ['assets/images/rent_cars/Audi_car_1.jpg'],
        productionYear: '2005',
        carTransmission: 'CVT',
        propulsionType: 'Four-Wheel Drive',
        engineType: 'Hybrid Engine',
        engineSize: 5,
        fuelTankCapacity: 90,
        fuelEfficiency: 18,
        mileage: 300,
        colors: [
          ColorModel(name: Color(0xff2b1894), quantity: 1),
        ],
        numberOfRentedTimes: 30,
        price: 44),
    CarModel(
        brand: 'Kia',
        name: 'Forte',
        photos: [
          'assets/images/rent_cars/kia_car_1.jpg',
          'assets/images/rent_cars/kia_car_1.jpg'
        ],
        productionYear: '2002',
        carTransmission: 'DCT',
        propulsionType: 'Four-Wheel Drive',
        engineType: 'Electric Engine',
        engineSize: 6,
        fuelTankCapacity: 80,
        fuelEfficiency: 15,
        mileage: 250,
        colors: [
          ColorModel(name: Color(0xff2b1894), quantity: 1),
        ],
        numberOfRentedTimes: 16,
        price: 100),
    CarModel(
        brand: 'Honda',
        name: 'Accord',
        photos: ['assets/images/rent_cars/honda_car_1.jpg'],
        productionYear: '1996',
        carTransmission: 'Automatic',
        propulsionType: 'Front-Wheel Drive',
        engineType: 'Hybrid Engine',
        engineSize: 5,
        fuelTankCapacity: 60,
        fuelEfficiency: 14,
        mileage: 160,
        colors: [
          ColorModel(name: Color(0xff2b1894), quantity: 1),
        ],
        numberOfRentedTimes: 11,
        price: 120),
    CarModel(
        brand: 'Audi',
        name: 'A4',
        photos: ['assets/images/rent_cars/Audi_car_1.jpg'],
        productionYear: '1994',
        carTransmission: 'Mechanical',
        propulsionType: 'Rear-Wheel Drive',
        engineType: 'Gasoline Engine',
        engineSize: 2,
        fuelTankCapacity: 40,
        fuelEfficiency: 9,
        mileage: 120,
        colors: [
          ColorModel(name: Color(0xff2b1894), quantity: 1),
        ],
        numberOfRentedTimes: 20,
        price: 100),
    CarModel(
        brand: 'Kia',
        name: 'Soul',
        photos: [
          'assets/images/rent_cars/kia_car_1.jpg',
          'assets/images/rent_cars/kia_car_1.jpg'
        ],
        productionYear: '2002',
        carTransmission: 'CVT',
        propulsionType: 'Front-Wheel Drive',
        engineType: 'Diesel Engine',
        engineSize: 4,
        fuelTankCapacity: 70,
        fuelEfficiency: 17,
        mileage: 260,
        colors: [
          ColorModel(name: Color(0xff2b1894), quantity: 1),
        ],
        numberOfRentedTimes: 25,
        price: 200),
    CarModel(
        brand: 'Honda',
        name: 'CR-V',
        photos: ['assets/images/rent_cars/honda_car_1.jpg'],
        productionYear: '2002',
        carTransmission: 'Automatic',
        propulsionType: 'Four-Wheel Drive',
        engineType: 'Diesel Engine',
        engineSize: 3,
        fuelTankCapacity: 63,
        fuelEfficiency: 12,
        mileage: 190,
        colors: [
          ColorModel(name: Color(0xff2b1894), quantity: 1),
        ],
        numberOfRentedTimes: 6,
        price: 120),
    CarModel(
        brand: 'Audi',
        name: 'Q5',
        photos: ['assets/images/rent_cars/Audi_car_1.jpg'],
        productionYear: '2005',
        carTransmission: 'DCT',
        propulsionType: 'Rear-Wheel Drive',
        engineType: 'Electric Engine',
        engineSize: 6,
        fuelTankCapacity: 90,
        fuelEfficiency: 20,
        mileage: 400,
        colors: [
          ColorModel(name: Color(0xff2b1894), quantity: 1),
        ],
        numberOfRentedTimes: 26,
        price: 250),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity.h,
        child: Column(
          children: [
            HeaderWithIcons(
              title: 'Cars for Rent',
              searchFunction: () {
                Get.toNamed('/RentSearch');
              },
              isAccessory: false,
            ),
            Expanded(
              child: Obx(() => rentCarsController.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    )
                  : CostumeList(list: rentCarsController.rentCarsList,isRent: true,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
