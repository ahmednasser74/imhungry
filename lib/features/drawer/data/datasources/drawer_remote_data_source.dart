import 'dart:io';

import 'package:get/get.dart';
import 'package:iam_hungry2/features/drawer/data/models/discount/discounts_model.dart';

abstract class DrawerRemoteDataSource {
  Future<DiscountsModel> getDiscounts();
}

class DrawerRemoteDataSourceImp extends GetConnect
    implements DrawerRemoteDataSource {

  @override
  Future<DiscountsModel> getDiscounts() async {
    const String base = '';
    final response = await httpClient
        .get('$base/movie/popular?api_key=d08eecd863f06da75667bc6853553bb0');
    if (response.statusCode == 200) {
      final json = response.body;
      final data = DiscountsModel.fromJson(json);
      return data;
    } else {
      print('statusCode = ${response.statusCode}');
      throw SocketException('Error Loading Message');
    }
  }
}
