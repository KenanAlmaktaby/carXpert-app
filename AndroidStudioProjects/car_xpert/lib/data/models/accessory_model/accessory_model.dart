import 'package:carxpert/data/models/general_model/general_model.dart';

class AccessoryModel extends GeneralModel {

  List<String> photos;
  String name;
  String description;
  String brand;
  List<String>? colors;
  String? material;
  String?  additionalInfo;
  List<String> features;
  double price;


  AccessoryModel({
    required this.photos,
    required this.name,
    required this.description,
    required this.brand,
    this.colors,
    this.material,
    this.additionalInfo,
    required this.features,
    required this.price,
  }) : super(message: '',data: []);
}