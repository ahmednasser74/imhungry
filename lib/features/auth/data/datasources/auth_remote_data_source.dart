import 'package:get/get.dart';
import 'package:iam_hungry2/features/auth/domin/usecases/auth_use_case.dart';

abstract class AuthRemoteDataSource {
  Future<void> login(LoginParams loginParams);
}

class AuthRemoteDataSourceImp extends GetConnect
    implements AuthRemoteDataSource {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://base_api.com';
  }

  @override
  Future<void> login(LoginParams loginParams) async {
    final response = await httpClient.post('/login');
    if(response.statusCode == 200){

    }
  }
}
