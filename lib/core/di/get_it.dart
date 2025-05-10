import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_service.dart';
import 'package:doc_app/feature/Sign_up/data/repo/SIgn_up_repo.dart';
import 'package:doc_app/feature/login/data/repos/login_repo.dart';
import 'package:get_it/get_it.dart';

import '../../feature/Sign_up/Logic/cubit/cubit/signup_cubit.dart';
import '../../feature/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

void setupInjection() {
  // Dio && ApiService
  Dio dio = Dio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //login repo && cubit
  getIt.registerLazySingleton<Loginrepo>(() => Loginrepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<Loginrepo>()));

  // SignUp repo && cubit
  getIt
      .registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt<ApiService>()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt<SignUpRepo>()));
}
