import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_manager_app/bloc/credentials_bloc.dart';
import 'package:password_manager_app/view_model/credentials_view_model.dart';
import 'package:password_manager_app/commons/commons.dart';

class CredentialPage extends StatefulWidget {
  const CredentialPage({super.key});

  @override
  State<CredentialPage> createState() => _CredentialPageState();
}

class _CredentialPageState extends State<CredentialPage> {
  @override
  Widget build(BuildContext context) {
    final CredentialsBloc bloc = context.watch()<CredentialsBloc>();

    return BlocBuilder<CredentialsBloc, CredentialsViewModel>(
        bloc: bloc,
        builder: (context, state) => AppScaffoldWidget(
            isLoading: bloc.state.isLoading,
            body: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text("${state.count}"),
                  const SizedBox(height: 16),
                  MaterialButton(
                      onPressed: () => bloc.goToNextPage(context),
                      color: Colors.green,
                      child: const Text("Next screen"))
                ])),
            floatActionButton: FloatingActionButton(
              onPressed: bloc.increment,
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            )));
  }
}
