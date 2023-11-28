import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_manager_app/bloc/create_credential_bloc.dart';
import 'package:password_manager_app/view_model/create_credential_view_model.dart';

class CreateCredentialPage extends StatefulWidget {
  const CreateCredentialPage({super.key});

  @override
  State<CreateCredentialPage> createState() => _CreateCredentialPageState();
}

class _CreateCredentialPageState extends State<CreateCredentialPage> {
  final CreateCredentialBloc bloc = CreateCredentialBloc();
  String get textStatus => true ? "can create" : "cant create";
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateCredentialBloc, CreateCredentialViewModel>(
      bloc: bloc,
      builder: (_, __) => Scaffold(
          backgroundColor: Colors.amber,
          body: Center(
            child: Text(textStatus),
          )),
    );
  }
}
