import 'package:bloc/bloc.dart';
import 'package:password_manager_app/view_model/create_credential_view_model.dart';

class CreateCredentialBloc extends Cubit<CreateCredentialViewModel> {
  CreateCredentialBloc() : super(CreateCredentialViewModel());
}
