import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  Future<Dio> getDio() async {
    Duration connectionTimeout = const Duration(seconds: 30);
    Duration receiveTimeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!.options = BaseOptions(
        connectTimeout: connectionTimeout,
        receiveTimeout: receiveTimeout,
      );
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
    ));
  }
}
