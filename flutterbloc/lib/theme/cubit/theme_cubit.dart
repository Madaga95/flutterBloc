import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_amberTheme);

  static final _lightTheme = ThemeData(
      brightness: Brightness.light,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
      ));

  static final _amberTheme = ThemeData(
    brightness: Brightness.dark,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.black87,
    ),
  );

  // si le théme est sombre on renvoi light sinon amber
  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _amberTheme);
  }
}
