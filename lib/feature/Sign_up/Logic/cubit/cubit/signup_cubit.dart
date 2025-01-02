import 'package:bloc/bloc.dart';
import 'package:doc_app/feature/Sign_up/Logic/cubit/cubit/signup_state.dart';
import 'package:doc_app/feature/Sign_up/data/models/Signup_body.dart';
import 'package:doc_app/feature/Sign_up/data/repo/SIgn_up_repo.dart';
import 'package:flutter/material.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(SignupState.initial());

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirmation = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  Future<void> signup() async {
    emit(SignupState.loading());
    final result = await _signupRepo.signUp(SignupBody(
      name: name.text,
      email: email.text,
      password: password.text,
      phone: phoneNumber.text,
      passwordConfirmation: passwordConfirmation.text,
      gender: 0,
    ));

    result.when(
      success: (data) {
        emit(SignupState.success(data));
      },
      failure: (message) {
        emit(SignupState.failure(message.apiErrorModel.message));
      },
    );
  }
}
