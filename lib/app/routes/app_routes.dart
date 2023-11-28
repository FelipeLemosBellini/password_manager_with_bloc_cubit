import 'package:flutter/material.dart';
import 'package:password_manager_app/pages/create_credential_page.dart';
import 'package:password_manager_app/pages/credentials_page.dart';

// abstract class AppRoutes {
//   static Map<String, Function(BuildContext)> routes = <String, Function(BuildContext)>{
//     'credentialPage': (context) => CredentialPage(),
//     'CreateCredentialPage': (context) => CreateCredentialPage(),
//   };
// }

class AppRoutes {
  static const String credentialPage = 'credential';
  static const String createCredentialPage = 'create_credential';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case credentialPage:
        return MaterialPageRoute(builder: (_) => CredentialPage());
      case createCredentialPage:
        return MaterialPageRoute(builder: (_) => CreateCredentialPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(body: Center(child: Text('Rota não encontrada: ${settings.name}'))));
    }
  }
}
