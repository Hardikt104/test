import 'package:flutter/material.dart';

import '../base_utils.dart';

class BaseStyles {
  static ThemeData appTheme = ThemeData(
    primaryColor: BaseColors.primary,
  );

  static ButtonStyle primaryBtn = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(BaseColors.primary),
  );

  static TextStyle hintStyle = TextStyle(
    color: BaseColors.black.withOpacity(0.5),
  );

  static InputBorder inputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: BaseColors.black.withOpacity(0.5),
    ),
  );

  static TextStyle btnText = const TextStyle(
    color: BaseColors.white,
  );
}
