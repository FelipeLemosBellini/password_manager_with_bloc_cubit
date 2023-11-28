import 'package:flutter/material.dart';

class AppScaffoldWidget extends StatefulWidget {
  final Widget body;
  final PreferredSize? appBar;
  final Widget? floatActionButton;
  final Color? backgroundColor;
  final bool isLoading;
  const AppScaffoldWidget(
      {required this.body,
      required this.isLoading,
      this.appBar,
      this.floatActionButton,
      this.backgroundColor = Colors.white,
      Key? key})
      : super(key: key);

  @override
  State<AppScaffoldWidget> createState() => _AppScaffoldWidgetState();
}

class _AppScaffoldWidgetState extends State<AppScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: widget.appBar,
          body: widget.body,
          backgroundColor: widget.backgroundColor,
          floatingActionButton: widget.floatActionButton,
        ),
        Visibility(
            visible: widget.isLoading,
            child: Container(height: 100, width: 100, color: Colors.black12, alignment: Alignment.center))
      ],
    );
  }
}
