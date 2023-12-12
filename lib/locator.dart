import 'package:get_it/get_it.dart';

import 'features/auth/signin/data/repositories/signin_repository_impl.dart';
import 'features/auth/signin/data/sources/apis/signin_api.dart';
import 'features/auth/signin/domain/repositories/signin_repository.dart';
import 'features/auth/signin/domain/usecases/get_signin_usecase.dart';
import 'features/auth/signin/presentation/providers/signin_provider.dart';
import 'features/auth/signup/data/repositories/signup_repository_impl.dart';
import 'features/auth/signup/data/sources/apis/signup_api.dart';
import 'features/auth/signup/domain/repositories/signup_repository.dart';
import 'features/auth/signup/domain/usecases/get_signup_usecase.dart';
import 'features/auth/signup/presentation/providers/signup_provider.dart';

final GetIt locator = GetIt.instance;

Future<void> getItSetup() async {
  //
  // AUTH
  //
  // Signup
  locator.registerLazySingleton<SignUpAPI>(() => SignUpAPIImpl());
  locator.registerLazySingleton<SignUpRepository>(
      () => SignUpRepositoryImpl(locator()));
  locator.registerLazySingleton<GetSignUpUsecase>(
      () => GetSignUpUsecase(locator()));
  locator
      .registerLazySingleton<SignUpProvider>(() => SignUpProvider(locator()));
  // Signin
  locator.registerLazySingleton<SignInAPI>(() => SignInAPIImpl());
  locator.registerLazySingleton<SignInRepository>(
      () => SignInRepositoryImpl(locator()));
  locator.registerLazySingleton<GetSignInUsecase>(
      () => GetSignInUsecase(locator()));
  locator
      .registerLazySingleton<SignInProvider>(() => SignInProvider(locator()));
}
