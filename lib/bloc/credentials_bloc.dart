import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:password_manager_app/app/routes/app_routes.dart';
import 'package:password_manager_app/view_model/credentials_view_model.dart';

class CredentialsBloc extends Cubit<CredentialsViewModel> {
  CredentialsBloc() : super(CredentialsViewModel());

  void increment() => emit(state.copyWith(count: state.count + 1));

  void goToNextPage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createCredentialPage);
  }
}
