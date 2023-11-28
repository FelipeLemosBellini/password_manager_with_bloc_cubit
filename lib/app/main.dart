import 'package:flutter/material.dart';
import 'package:password_manager_app/app/routes/app_routes.dart';
import 'package:password_manager_app/pages/create_credential_page.dart';
import 'package:password_manager_app/pages/credentials_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.credentialPage,
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
    );
  }

}
