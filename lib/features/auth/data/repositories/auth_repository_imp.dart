import 'package:iam_hungry2/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:iam_hungry2/features/auth/domin/repositories/auth_repository.dart';
import 'package:iam_hungry2/features/auth/domin/usecases/auth_use_case.dart';
import 'package:iam_hungry2/features/auth/domin/usecases/otp_use_case.dart';

class AuthRepositoryImp implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImp({required this.authRemoteDataSource});

  @override
  Future<void> login(LoginParams params) async {
    authRemoteDataSource.login(params);
  }

  @override
  Future<void> sendOtp(OtpParams otpParams) async {
    await authRemoteDataSource.sendOtp(otpParams);
  }
}
