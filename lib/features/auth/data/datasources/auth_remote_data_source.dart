import 'package:get/get.dart';
import 'package:iam_hungry2/features/auth/domin/usecases/auth_use_case.dart';
import 'package:iam_hungry2/features/auth/domin/usecases/otp_use_case.dart';

abstract class AuthRemoteDataSource {
  Future<void> login(LoginParams loginParams);

  Future<void> sendOtp(OtpParams otpParams);
}

class AuthRemoteDataSourceImp extends GetConnect
    implements AuthRemoteDataSource {
  @override
  Future<void> login(LoginParams loginParams) async {
    httpClient.baseUrl = '';
    final response = await httpClient.post('/login');
    if (response.statusCode == 200) {}
  }

  @override
  Future<void> sendOtp(OtpParams otpParams) async {
    httpClient.baseUrl = '';
    final response = await httpClient.post(
      '/otp',
      body: {'otp', otpParams.otpCode},
    );
    if (response.statusCode == 200) {}
  }
}
