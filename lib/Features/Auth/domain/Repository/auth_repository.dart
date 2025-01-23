import 'package:blogify/Core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Either<Failures, String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Either<Failures, String> logInWithEmailPassword({
    required String email,
    required String password,
  });
}
