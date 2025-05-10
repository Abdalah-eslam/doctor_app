import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/core/networking/api_service.dart';

import '../models/Requst_Login_model.dart';
import '../models/login_reponse.dart';

class Loginrepo {
  final ApiService _apiService;

  Loginrepo(this._apiService);

  Future<ApiResult<LoginReponse>> login(RequstLoginModel model) async {
    try {
      return ApiResult.success(await _apiService.login(model));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
