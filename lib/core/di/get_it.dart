import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_service.dart';
import 'package:doc_app/feature/login/data/repos/login_repo.dart';
import 'package:get_it/get_it.dart';

import '../../feature/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

void setupInjection() {
  // Dio && ApiService
  Dio dio = Dio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //login repo && cubit
  getIt.registerLazySingleton<Loginrepo>(() => Loginrepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<Loginrepo>()));
}
