import 'dart:io';

import 'package:get/get.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/categories/categories_model.dart';

abstract class HungryRemoteDataSource {
  Future<CategoriesModel> getMenu();
}

class HungryRemoteDataSourceImp extends GetConnect
    implements HungryRemoteDataSource {
  @override
  Future<CategoriesModel> getMenu() async {
    // httpClient.baseUrl = 'https://morgan.toast.sa/api/';
    final response = await httpClient.get(
      'https://morgan.toast.sa/api/seller-menu/list/1',
      headers: {'localization': 'en'},
    );
    if (response.statusCode == 200) {
      final json = response.body['data'];
      final data = CategoriesModel.fromJson(json);
      return data;
    } else {
      print('statusCode = ${response.statusCode}');
      throw SocketException('Error Loading Message');
    }
  }
}
