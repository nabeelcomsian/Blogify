import 'package:blogify/Core/error/failures.dart';
import 'package:blogify/Features/Auth/data/dataSource/auth_supabase_data_source.dart';
import 'package:blogify/Features/Auth/domain/Repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImple implements AuthRepository {
  AuthSupabaseDataSource authSupabaseDataSource;
  AuthRepositoryImple(this.authSupabaseDataSource);
  @override
  Either<Failures, String> logInWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement logInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Either<Failures, String> signUpWithEmailPassword(
      {required String name, required String email, required String password})async {
     try{
    authSupabaseDataSource.signupWithEmailPassword(name: name, email: email, password: password)
     }
     catch(e){

     }
  }
}
