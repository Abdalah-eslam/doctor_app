import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_consts.dart';
import 'package:doc_app/feature/Sign_up/data/models/Signup_body.dart';
import 'package:doc_app/feature/Sign_up/data/models/signUp_response.dart';
import 'package:doc_app/feature/login/data/models/login_reponse.dart';
import 'package:retrofit/retrofit.dart';

import '../../feature/login/data/models/Requst_Login_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConsts.login)
  Future<LoginReponse> login(
    @Body() RequstLoginModel requstLoginModel,
  );

  @POST(ApiConsts.signUp)
  Future<SignupResponse> signUp(
    @Body() SignupBody signupBody,
  );
}
