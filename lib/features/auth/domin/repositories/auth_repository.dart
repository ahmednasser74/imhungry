import 'package:iam_hungry2/features/auth/domin/usecases/auth_use_case.dart';
import 'package:iam_hungry2/features/auth/domin/usecases/otp_use_case.dart';

abstract class AuthRepository {
  Future<void> login(LoginParams loginParams);

  Future<void> sendOtp(OtpParams otpParams);
}
