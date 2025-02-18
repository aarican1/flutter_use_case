import 'package:flutter_use_case_app/dynamic_bottom_sheet/model/product_model.dart';

final class ProductModelFactory {
  ProductModelFactory._(this.items);

  final List<ProductModel> items;

  factory ProductModelFactory.shopItems() {
    return ProductModelFactory._([
      ProductModel(id: "2", price: 12, stokId: "qwe12"),
      ProductModel(id: "3", price: 9, stokId: "qwe23"),
      ProductModel(id: "4", price: 23, stokId: "qwe34"),
    ]);
  }
}
