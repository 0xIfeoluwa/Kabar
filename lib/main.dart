import 'package:flutter/material.dart';
import 'package:kabar/home.dart';

final lightTheme = ThemeData(
  textSelectionTheme:
      const TextSelectionThemeData(cursorColor: Color(0xff4E4B66)),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        color: Color(0xff4E4B66),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        color: Color(0xff4E4B66),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        color: Color(0xff4E4B66),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        color: Color(0xff4E4B66),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 0.7,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),
  ),
);

void main() => runApp(
      MaterialApp(
        home: const Kadar(),
        theme: lightTheme,
      ),
    );
