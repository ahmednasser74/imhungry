import 'package:equatable/equatable.dart';
import 'package:iam_hungry2/core/usecases/usecase.dart';
import 'package:iam_hungry2/features/auth/domin/repositories/auth_repository.dart';

class LoginUseCase extends UseCase<void, LoginParams> {
  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  @override
  void call({required LoginParams params}) {
    authRepository.login(params);
  }
}

class LoginParams extends Equatable {
  final String phone;

  LoginParams({required this.phone});

  @override
  List<Object?> get props => [phone];
}
