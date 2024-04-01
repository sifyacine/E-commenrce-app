import 'package:flutter/material.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._();
  /// --Light Bottom Sheet
  static BottomSheetThemeData lightBottomSheetThem = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );
  /// --Dark Bottom Sheet
  static BottomSheetThemeData darkBottomSheetThem = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );

}