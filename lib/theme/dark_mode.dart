import 'package:flutter/material.dart';

const Color primary = Color(0xFF1A202C);
const Color onPrimary = Color(0xFFFFFFFF);
const Color secondary = Color(0xFF4A5568);
const Color onSecondary = Color(0xFFFFFFFF);
const Color error = Color(0xFFF56565);
const Color onError = Color(0xFF1A202C);
const Color surface = Color(0xFF2D3748); // Lighter than primary
const Color onSurface = Color(0xFFFFFFFF);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
        primary: primary,
        onPrimary: onPrimary,
        secondary: secondary,
        onSecondary: onSecondary,
        error: error,
        onError: onError,
        surface: surface,
        onSurface: onSurface,
        brightness: Brightness.dark),
    textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ));
