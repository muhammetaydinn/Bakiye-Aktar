import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
}

extension MediaQueryExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get width => mediaQuery.size.width;
  double get height => mediaQuery.size.height;

  double get blockSizeHorizontal => width / 100;
  double get blockSizeVertical => height / 100;

  Orientation get orientation => mediaQuery.orientation;

  double get lowVerticalValue => blockSizeVertical;
  double get normalVerticalValue => blockSizeVertical * 2;
  double get mediumVerticalValue => blockSizeVertical * 4;
  double get highVerticalValue => blockSizeVertical * 10;

  double get lowHorizontalValue => blockSizeHorizontal;
  double get normalHorizontalValue => blockSizeHorizontal * 2;
  double get mediumHorizontalValue => blockSizeHorizontal * 4;
  double get highHorizontalValue => blockSizeHorizontal * 10;

  double dynamicHeight(double val) => blockSizeVertical * val * 100;
  double dynamicWidth(double val) => blockSizeHorizontal * val * 100;

  bool get isPortrait => orientation == Orientation.portrait;
}
