import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeManager? _instace;
  static ThemeManager get instance {
    return _instace ??= ThemeManager._init();
  }

  ThemeManager._init();

  ThemeData get themeData => ThemeData();
}
