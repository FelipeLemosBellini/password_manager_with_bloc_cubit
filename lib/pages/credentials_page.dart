import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_manager_app/bloc/credentials_bloc.dart';
import 'package:password_manager_app/view_model/credentials_view_model.dart';

class CredentialPage extends StatefulWidget {
  const CredentialPage({super.key});

  @override
  State<CredentialPage> createState() => _CredentialPageState();
}

class _CredentialPageState extends State<CredentialPage> {

  final CredentialsBloc bloc = CredentialsBloc();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CredentialsBloc, CredentialsViewModel>(
        bloc: bloc,
        builder: (context, state) => Scaffold(
            body: Center(child: Text("${state.count}")),
            floatingActionButton: FloatingActionButton(
              onPressed: bloc.increment,
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            )));
  }
}
