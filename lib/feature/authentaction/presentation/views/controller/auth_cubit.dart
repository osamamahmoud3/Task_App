import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/feature/authentaction/domin/repos/auth_repo.dart';

import '../../../data/models/login_request_body.dart';
import '../../../data/models/login_response_body.dart';
import '../../../data/models/signup_request_body.dart';
import '../../../data/models/signup_response_body.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authRepo;
  AuthCubit(this.authRepo) : super(const AuthState.initial());
  // Sign up Text Editing controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController yearsOfExperienceController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? countryCode = '+20';
  String? experienceLevel;
  // Login Text Editing Controllers
  TextEditingController loginPhoneController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  Future<void> emitSignUp() async {
    emit(const AuthState.signUpLoading());
    final response = await authRepo.signUp(SignupRequestBody(
        name: nameController.text,
        phoneNumber:
            '$countryCode${loginPhoneController.text.characters.first == '0' ? loginPhoneController.text.replaceFirst('0', '') : loginPhoneController.text}',
        yearsOfExperience: int.parse(yearsOfExperienceController.text),
        address: addressController.text,
        password: passwordController.text,
        experienceLevel: experienceLevel!));

    response.fold((l) {
      emit(AuthState.signUpFailure(l.errorMsg));
    }, (r) {
      emit(AuthState.signUpSuccess(r));
    });
  }

  Future<void> emitLogin() async {
    emit(const AuthState.loginLoading());
    final response = await authRepo.login(LoginRequestBody(
        phone:
            '$countryCode${loginPhoneController.text.characters.first == '0' ? loginPhoneController.text.replaceFirst('0', '') : loginPhoneController.text}',
        password: loginPasswordController.text));
    response.fold((l) {
      emit(AuthState.loginError(l.errorMsg));
    }, (r) {
      emit(AuthState.loginSuccess(r));
    });
  }
}
