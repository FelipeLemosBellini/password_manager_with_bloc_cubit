import 'package:bloc/bloc.dart';
import 'package:password_manager_app/view_model/credentials_view_model.dart';

class CredentialsBloc extends Cubit<CredentialsViewModel> {
  CredentialsBloc() : super(CredentialsViewModel());

  void increment() {
    emit(state.copyWith(count: state.count + 1));
  }
}
