import 'package:bloc/bloc.dart';
import 'package:doc_app/feature/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';

import '../../data/models/Requst_Login_model.dart';
import '../../data/repos/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final Loginrepo _loginrepo;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  LoginCubit(this._loginrepo) : super(LoginState.initial());

  Future<void> login() async {
    emit(LoginState.loading());
    final result = await _loginrepo
        .login(RequstLoginModel(email: email.text, password: password.text));
    result.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (message) {
        emit(LoginState.failure(message: message.apiErrorModel.message));
      },
    );
  }
}
