import 'package:equatable/equatable.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/auth/domin/repositories/auth_repository.dart';

class OtpUseCase extends UseCase<void, OtpParams> {
  final AuthRepository authRepository;

  OtpUseCase({required this.authRepository});

  @override
  void call({required OtpParams params})async {
    await authRepository.sendOtp(params);
  }
}

class OtpParams extends Equatable {
  final String otpCode;

  OtpParams({required this.otpCode});

  @override
  List<Object?> get props => [otpCode];
}
