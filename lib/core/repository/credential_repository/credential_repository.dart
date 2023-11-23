import 'package:password_manager_app/core/models/credential_model.dart';
import 'package:password_manager_app/core/repository/credential_repository/interface/interface_credential_repository.dart';

class CredentialRepository implements ICredentialRepository {
  @override
  void createCredential({required CredentialModel model}) {
    // TODO: implement createCredential
  }

  @override
  void deleteCredential() {
    // TODO: implement deleteCredential
  }

  @override
  void editCredential({required CredentialModel model}) {
    // TODO: implement editCredential
  }

  @override
  Future<List<CredentialModel>> getCredentials() async {
    return [
      CredentialModel(login: "login", orientation: 'orientation', password: 'password'),
      CredentialModel(login: "login", orientation: 'orientation', password: 'password'),
      CredentialModel(login: "login", orientation: 'orientation', password: 'password'),
    ];
  }
}
