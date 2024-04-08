import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();

  /// --light Chip Theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    deleteIconColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );/// --dark Chip Theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
    deleteIconColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );
}