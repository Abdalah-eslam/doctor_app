import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/core/networking/api_service.dart';
import 'package:doc_app/feature/Sign_up/data/models/Signup_body.dart';
import 'package:doc_app/feature/Sign_up/data/models/signUp_response.dart';

class SignUpRepo {
  ApiService apiService;
  SignUpRepo(this.apiService);

  Future<ApiResult<SignupResponse>> signUp(SignupBody signupBody) async {
    try {
      return ApiResult.success(await apiService.signUp(signupBody));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
