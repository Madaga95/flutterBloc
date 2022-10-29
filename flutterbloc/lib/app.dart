import 'package:flutter/material.dart';
import 'counter/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme/theme.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: const CounterAppView(),
    );
  }
}

class CounterAppView extends StatelessWidget {
  const CounterAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: ((context, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Counter Bloc',
          home: const CounterPage(),
          theme: theme,
        );
      }),
    );
  }
}
