import 'package:password_manager_app/core/models/credential_model.dart';

abstract class ICredentialRepository {
  Future<List<CredentialModel>> getCredentials();

  void createCredential({required CredentialModel model});

  void editCredential({required CredentialModel model});

  void deleteCredential();
}
