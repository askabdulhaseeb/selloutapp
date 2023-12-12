import 'package:get_it/get_it.dart';

import 'features/auth/signin/data/repositories/signin_repository_impl.dart';
import 'features/auth/signin/data/sources/apis/signin_api.dart';
import 'features/auth/signin/domain/repositories/signin_repository.dart';
import 'features/auth/signin/domain/usecases/get_signin_usecase.dart';
import 'features/auth/signin/presentation/providers/signin_provider.dart';

final GetIt locator = GetIt.instance;

Future<void> getItSetup() async {
  //
  // AUTH
  //
  // Signin
  locator.registerLazySingleton<SignInAPI>(() => SignInAPIImpl());
  locator.registerLazySingleton<SignInRepository>(
      () => SignInRepositoryImpl(locator()));
  locator.registerLazySingleton<GetSignInUsecase>(
      () => GetSignInUsecase(locator()));
  locator
      .registerLazySingleton<SignInProvider>(() => SignInProvider(locator()));
}
