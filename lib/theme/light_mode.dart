import 'package:flutter/material.dart';

const Color primary = Color(0xFFFFFFFF);
const Color onPrimary = Color(0xFF1A202C);
const Color secondary = Color(0xFF4A5568);
const Color onSecondary = Color(0xFF1A202C);
const Color error = Color(0xFFF56565);
const Color onError = Color(0xFFFFFFFF);
const Color surface = Color(0xFFF7FAFC); // Slightly off-white
const Color onSurface = Color(0xFF1A202C);

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme(
        primary: primary,
        onPrimary: onPrimary,
        secondary: secondary,
        onSecondary: onSecondary,
        error: error,
        onError: onError,
        surface: surface,
        onSurface: onSurface,
        brightness: Brightness.light),
    textTheme: ThemeData.light().textTheme.apply(
          bodyColor: Colors.grey[700],
          displayColor: Colors.grey[900],
        ));
