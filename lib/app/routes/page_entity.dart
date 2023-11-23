import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class PageEntity<T> {
  final String path;
  final Widget page;
  dynamic bloc;

  PageEntity({
    required this.path,
    required this.page,
    required this.bloc,
  });
}
