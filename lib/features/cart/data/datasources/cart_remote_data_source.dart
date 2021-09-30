import 'dart:io';

import 'package:get/get_connect/connect.dart';
abstract class CartRemoteDataSource {
  Future<void> getBeforeCheckout();
}

class CartRemoteDataSourceImp extends GetConnect
    implements CartRemoteDataSource {
  @override
  Future<void> getBeforeCheckout() async {
    final response = await httpClient.get(
      'https://morgan.toast.sa/api/seller-menu/list/1',
      headers: {'localization': 'en'},
    );
    if (response.statusCode == 200) {
      final json = response.body['data'];
      // final data = CategoriesModel.fromJson(json);
      // return data;
    } else {
      print('statusCode = ${response.statusCode}');
      throw SocketException('Error Loading seller-menu');
    }
  }
}
