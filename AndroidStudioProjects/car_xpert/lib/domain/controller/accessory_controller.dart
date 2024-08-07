import 'package:carxpert/data/models/accessory_general_model/accessory_general_model.dart';
import 'package:carxpert/service/accessory_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccessoryController extends GetxController{
  List<AccessoryDatum> accessoriesList = [];
  AccessoryService accessoryService = AccessoryService();
  var isLoading = true.obs;
  // List<AccessoryModel> carAccessories = [
  //   AccessoryModel(
  //       photos: [
  //         'assets/images/accessories/cup_holder_1.jpg',
  //         'assets/images/accessories/cup_holder_2.jpg',
  //         'assets/images/accessories/cup_holder_3.jpg',
  //         'assets/images/accessories/cup_holder_4.jpg',
  //       ],
  //       name: 'Cup Holder',
  //       description: 'Syngaro Car Cup Coaster, 4pcs Universal Non-Slip Cup Holders Built-in Decorative Cup Coaster.',
  //       brand: 'Syngaro',
  //       colors: ['black' , 'white' , 'brown'],
  //       material: 'PVC plastic',
  //       additionalInfo: 'It is round in shape and requires hand washing only.',
  //       features: [
  //         'High Quality: Made of high quality PVC soft glue, the material is soft, flexible, durable and not easy to deform, thick texture, waterproof and dustproof, keeps the cup hole clean and tidy.',
  //         'Customization: The car cup coaster adopts groove pattern design, with beautiful shape and various colors and patterns, which can add color to your car.',
  //         'Easy to clean: When the coaster has residual stains and dirt after use, it can be used after washing with water and drying.'
  //       ],
  //       price: 3.24),
  //   AccessoryModel(
  //       photos: [
  //         'assets/images/accessories/phone_charger_1.jpg',
  //         'assets/images/accessories/phone_charger_2.jpg',
  //         'assets/images/accessories/phone_charger_3.jpg',
  //       ],
  //       name: 'Phone Charger',
  //       description: 'FOKKAH 60W Retractable Car Charger Compatible with iPhone 15/14/13/12/11, '
  //           '20W PD/Type C 40W Fast Car Power Adapter, USB Car Fast Phone Charger (Quad).',
  //       brand: 'FOKKAH',
  //       colors: ['gray' , 'black'],
  //       additionalInfo: 'It supports USB communication technology and has a USB Type C connector type, as it is compatible with iPhone 15/14/13/12/11 models.'
  //           ' It has the feature of being able to pull out the plug and contains a USB port. The input voltage is 12 volts and its electrical power is 60 watts.',
  //       features: [
  //         '60W Fast Charger: 40W Type C/PD20W compatible with iPhone 15/14/13/12/11, the charger can charge the phone 90% in 30 minutes, supports QC 4.0.',
  //         'Retractable Fast Charging Cable: Two full length 80cm retractable fast charging lines enable driver and co-driver to charge at the same time without interference, you only need to gently pull 1cm to release the hand and it will retract automatically.',
  //         'Meet Many Devices: Two nested charging cables can charge, compatible with iPhone 15/14/13/12/11 and Android Type C. The external USB cable can be connected to meet a variety of devices charging at the same time.',
  //         'LED Voltage Monitoring: LED voltage monitoring, let you know the car voltage anytime and anywhere, 12.5V is the normal voltage of the car.',
  //       ],
  //       price: 17.28),
  //   AccessoryModel(
  //       photos: [
  //         'assets/images/accessories/phone_holder_1.jpg',
  //         'assets/images/accessories/phone_holder_2.jpg',
  //       ],
  //       name: 'Phone Holder',
  //       description: 'Urban Prime Portable Mobile Phone Holder, for Smartphones.',
  //       brand: 'Urban Prime',
  //       colors: ['black'],
  //       additionalInfo: 'It is compatible with smartphones, is mounted on the handlebar, and is rotatable and adjustable.',
  //       features: [
  //         '360 degree adjustable rotation and full access: Freely adjust the phone to any angle that suits your needs while driving,'
  //             ' its design allows you to access all buttons easily without blocking them, you will then have better navigation with the ability to watch videos or just listen to your favorite music while driving.',
  //         'DURABLE AND SECURE MOUNTING: The phone holder has 4 stainless steel arms with attractive support corners to ensure your phone stays firmly attached to the handlebar. It will not cause any harm to your smartphone even if you find yourself on a bumpy and rocky road.',
  //         'Universal for all cell phones.',
  //         'Handlebar Compatibility: Designed with non-slip rubber seals and locking screws, it is adjustable to fit handlebars, and is also widely used not only with cars.',
  //         'Detachable and Lockable with Key: No need to completely disassemble the phone holder from the bike, you can easily remove the phone holder or phone thanks to its easy and smooth mechanism.',
  //       ],
  //       price: 15.93
  //   ),
  //   AccessoryModel(
  //       photos: [
  //         'assets/images/accessories/phone_holder_2_1.jpg',
  //         'assets/images/accessories/phone_holder_2_2.jpg',
  //         'assets/images/accessories/phone_holder_2_3.jpg',
  //         'assets/images/accessories/phone_holder_2_4.jpg',
  //       ],
  //       name: 'Phone Holder',
  //       description: 'Miracase (New Generation 2023) Long Arm Car Mobile Holder for Dashboard, Windshield and Air Vent (Strong Heat Resistant Suction Cup) Car mobile holder compatible with all smartphones.',
  //       brand: 'Miracase',
  //       colors: ['black'],
  //       additionalInfo: 'It is compatible with a wide range of phone devices and can be installed on (windbreak - dash - ventilation hole).',
  //       features: [
  //         '3 IN 1 UNIVERSAL CAR PHONE HOLDER: Equipped with strong suction cup and upgraded air vent clip, providing easy mounting options on dashboard, windshield and air vent to meet all your needs. This versatile phone holder fits most vehicles.',
  //         'HEAT RESISTANT SUCTION CUP AND FULL PROTECTION: This phone holder features 2023 upgraded heat resistant gel, which resists -40℉ to 200℉, high-density and high-elasticity pad, solid mounting arms, and adjustable scratch-resistant bottom tray to provide full protection for your phone.',
  //         'Reliable Military Grade Suction Power: Upgraded super strong suction base and super sticky gel pad can resist up to 60lbs, which can hold your mobile phone tightly.',
  //         'Multiple Adjustable Viewing Angle with Long Telescopic Arm: 270°adjustable long telescopic arm and 360°rotatable ball joint make you can adjust your phone to any ideal places and angles.',
  //         'UNIVERSAL COMPATIBILITY AND ALL LARGE PHONE CASES: Wider and deeper adjustable clip arms allow it to fit all phones (4-7 inches) and thick phone cases.',
  //         'EASY ONE-HAND OPERATION: With a quick release button and adjustable clamp arms, this cell phone holder makes it super easy to lock and release your phone with just one hand. Provide you safer driving whether you are talking, navigating, listening to music or charging.',
  //       ],
  //       price: 8.1
  //   ),
  //   AccessoryModel(
  //       photos: [
  //         'assets/images/accessories/storage_box_1.jpg',
  //         'assets/images/accessories/storage_box_2.jpg',
  //         'assets/images/accessories/storage_box_3.jpg',
  //       ],
  //       name: 'Storage Box',
  //       description: 'ICVV Car Seat Gap Organizer Storage Box Cup Holder PU Leather Side Pockets for Cell Phones, Keys, Sunglasses and Car Interior Accessories 2pcs.',
  //       brand: 'ICVV',
  //       colors: ['black'],
  //       material: 'Synthetic leather + ABS plastic',
  //       features: [
  //         'Package List: Comes with 2 car gap organizers (1 for driver side and 1 for passenger side).',
  //         'Say goodbye to clutter: It keeps your car neat and organized, as it prevents small items from falling between the car seat gap and thus prevents distraction.',
  //         'Durable and wear-resistant: The car console side pockets are made of high quality PU leather + plastic, with perfect red stitching, stylish and unique with exquisite craftsmanship, the back has sponge that will not scratch your car interior.',
  //         'Easy to install: Simply insert it between the center console. This will not affect the fore and aft adjustment of the seat, or the position of the seat belt buckle. When cleaning, you can wipe it with a wet towel and water.',
  //         'PERFECT STORAGE BOX: Create extra storage space for your items such as cell phones, wallets, cups, cigarettes, keys, hand cream, coins, gloves, credit cards, pens and sunglasses.',
  //       ],
  //       price: 7.56),
  //   AccessoryModel(
  //       photos: [
  //         'assets/images/accessories/storage_box_2_1.jpg',
  //         'assets/images/accessories/storage_box_2_2.jpg',
  //         'assets/images/accessories/storage_box_2_3.jpg',
  //         'assets/images/accessories/storage_box_2_4.jpg',
  //         'assets/images/accessories/storage_box_2_5.jpg',
  //       ],
  //       name: 'Storage Box',
  //       description: 'Tita Foldable Trunk Organizer, 8 Pocket Trunk Organizer, Waterproof and Dust proof, Durable Storage Mesh for More Trunk Space with Adjustable Straps.',
  //       brand: 'Generic',
  //       material: 'Manufactured wood',
  //       colors: ['black'],
  //       additionalInfo: 'The dimensions of this product are 8 depth x 15 width x 20 height cm. It has a rectangular shape and is adjustable and foldable as well, and can be installed on surfaces.',
  //       features: [
  //         'STURDY, DURABLE AND WATERPROOF: The Tita car trunk organizer is made of ultra-durable 600D Oxford fabric, waterproof, abrasion-resistant and easy to clean.'
  //             ' The non-slip bottom keeps it in your car. It features reinforced stitching on areas that receive the most wear that can withstand heavy use and stand the test of time, and can withstand up to 100 pounds.'
  //             ' The dividers are made of high density board which is more stable and durable.',
  //         'INNOVATIVE DESIGN AND MULTI-FACETED DESIGN: This car trunk organizer measures 52 x 38.5 x 26cm (unfolded), 2 large front pockets, and 4 side mesh pockets for storing bottles, phones, keys, books, maps, etc.'
  //             ' Plenty of storage space and two foldable compartments with a removable flap can hold work folders, tablets, or in the truck for tools, pet supplies, and more! 6 built-in elastic bandages to secure long objects.',
  //         'Flexible, easy to use and install: simply open and load any items you want. The car trunk organizer can retract or expand to fit the trunk properly. Folds in half lengthwise as a seat organizer perfect for working or traveling alone.'
  //             ' Fully collapsible for easy storage when not needed.',
  //         'Wide Application: The car trunk organizer is great for family outings, picnics, motorhomes, shopping or emergency supplies.',
  //       ],
  //       price: 7),
  //   AccessoryModel(
  //       photos: [
  //         'assets/images/accessories/tissue_holder_1.jpg',
  //         'assets/images/accessories/tissue_holder_2.jpg',
  //         'assets/images/accessories/tissue_holder_3.jpg',
  //       ],
  //       name: 'Tissue Holder',
  //       description: 'Fredysu Luxury Leather Backseat Tissue Holder and Car Protector, Cartbox02B.',
  //       brand: 'Salvar',
  //       colors: ['black'],
  //       material: 'faux leather',
  //       additionalInfo:'Product dimensions: 22.9L x 12.7W x 4.1H cm.',
  //       features: [
  //         'PERFECT DESIGN: Classic and compact design, this car tissue holder keeps your car more organized and saves space for your car.',
  //         'Easy to install: Simply install the tissue box on your sun visor, seat back or car door pocket.',
  //         'DURABLE AND GOOD LOOKING: Genuine leather outside, flannelette inside, handmade with flawless stitching, easy to clean.',
  //         'Repeated Use Feature: The Velcro tape on the tissue box can be used again and again, easy to open and refill with new tissue.',
  //       ],
  //       price: 5.4
  //   ),
  // ];
  //
  Map<String , dynamic> accessoryColor = {
    'red': Color(0xffff0000),
    'black':Color(0xff0a0a0a),
    'brown' : Color(0xffa14a29),
    'white' : Color(0xfffdfbfb),
    'gray' :Color(0xff7e7c7c),
  };

  dynamic findSameColor(String value ){
    for(int i =0 ; i < accessoryColor.length ; i++){
      if(accessoryColor.containsKey(value)){
        return accessoryColor[value];
      }
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() async {
    // token pass for function
    accessoriesList = await accessoryService.getAllAccessories();
    isLoading(false);
    super.onReady();
  }
}