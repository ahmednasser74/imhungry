import 'dart:io';

import 'package:get/get_connect/connect.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/category_model.dart';

abstract class CartRemoteDataSource {
  Future<CategoryModel> getBeforeCheckout();
}

class CartRemoteDataSourceImp extends GetConnect
    implements CartRemoteDataSource {
  @override
  Future<CategoryModel> getBeforeCheckout() async {
    final response = await httpClient.get(
      'https://morgan.toast.sa/api/seller-menu/list/1',
      headers: {'localization': 'en'},
    );
    if (response.statusCode == 200) {
      final json = response.body['data'];
      final data = CategoryModel.fromJson(json);
      return data;
    } else {
      print('statusCode = ${response.statusCode}');
      throw SocketException('Error Loading seller-menu');
    }
  }
}
