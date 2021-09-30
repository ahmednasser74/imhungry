import 'dart:io';

import 'package:get/get.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/category/categories/categories_model.dart';

abstract class HungryRemoteDataSource {
  Future<CategoriesModel> getMenu();
}

class HungryRemoteDataSourceImp extends DefaultGetConnect
    implements HungryRemoteDataSource {
  @override
  Future<CategoriesModel> getMenu() async {
    final response = await getData(path: 'seller-menu/list/1');

    if (response.statusCode == 200) {
      final json = response.body['data'];
      final data = CategoriesModel.fromJson(json);
      return data;
    } else {
      print('statusCode = ${response.statusCode}');
      throw SocketException('Error Loading seller-menu');
    }
  }
}

class DefaultGetConnect extends GetConnect {
  final Map<String, String>? headers;
  DefaultGetConnect({this.headers = const {'localization': 'en'}});
  @override
  InternalFinalCallback<void> get onStart {
    super.onStart;
    httpClient.baseUrl = 'https://morgan.toast.sa/api/';
    return InternalFinalCallback<void>();
  }

  Future<Response> getDataById(String path, int id) async {
    final response = await httpClient.get(
      '$path/$id',
      headers: headers,
    );
    return response;
  }

  Future<Response> getData({required String path}) async {
    final response = await httpClient.get(
      '$path',
      headers: headers,
    );
    return response;
  }

  Future<Response> postData(
    String path, {
    Map<String, dynamic>? data,
  }) async {
    final response = await httpClient.post(
      '$path',
      query: data,
      headers: headers,
    );
    return response;
  }

  @override
  void onClose() {
    httpClient.close();
    super.onClose();
  }
}
