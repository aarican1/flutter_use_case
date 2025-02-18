import 'package:flutter_use_case_app/dynamic_bottom_sheet/model/custom_selection_model.dart';

final class ProductModel extends CustomSelectionModel {
  ProductModel({required this.id, required this.price, required this.stokId});

  @override
  final String id;

  final int price;
  final String stokId;

  @override
  String get name => "Product $id";
}
