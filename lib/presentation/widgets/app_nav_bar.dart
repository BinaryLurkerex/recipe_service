import 'package:flutter/material.dart';
import 'package:recipe/infrastucture/core/injector.dart';
import 'package:recipe/presentation/bloc/page_bloc.dart';

class AppNavBar extends StatelessWidget {
  late final PageBloc pageBloc;

  AppNavBar({super.key}) {
    pageBloc = getIt<PageBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
