import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_manager_app/app/routes/page_entity.dart';
import 'package:password_manager_app/bloc/credentials_bloc.dart';
import 'package:password_manager_app/pages/credentials_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [..._blocer(context)],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true),
        ));
  }

  static List<dynamic> _blocer(BuildContext context) {
    List<dynamic> list = <dynamic>[];
    list.add(PageEntity(
      path: "page",
      page: CredentialPage(),
      bloc: BlocProvider(create: (_) => CredentialsBloc()),
    ));
    return list;
  }
  //https://www.youtube.com/watch?v=dl6oUW6H7yo
}
