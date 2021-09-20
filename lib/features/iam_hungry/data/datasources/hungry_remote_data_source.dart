import 'dart:io';

import 'package:get/get.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu/menus_model.dart';

abstract class HungryRemoteDataSource {
  Future<MenusModel> getMenu();
}

class HungryRemoteDataSourceImp extends GetConnect
    implements HungryRemoteDataSource {

  static const String base = 'https://api.themoviedb.org/3/';

  @override
  Future<MenusModel> getMenu() async {
    final response = await get(
        '$base/movie/popular?api_key=d08eecd863f06da75667bc6853553bb0');
    if (response.statusCode == 200) {
      final json = response.body;
      final data = MenusModel.fromJson(json);
      return data;
    } else {
      print('statusCode = ${response.statusCode}');
      throw SocketException('Error Loading Message');
    }
  }
}
