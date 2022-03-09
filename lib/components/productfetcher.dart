import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hapitate/models/productmodel.dart';

class ProductFetch {
  List<ProductLogModel> productList = [];

  Future<void> productFetcher() async {
    var productJson = await rootBundle.loadString("lib/productlog.json");
    var jsonData = jsonDecode(productJson);
    jsonData["products"].forEach((product) {
      ProductLogModel p = new ProductLogModel(
          headername1: product["headername1"],
          headername2: product["headername2"],
          headerImages: product["headerImages"],
          imageList: product["imageList"]);
      productList.add(p);
    });
  }
}
