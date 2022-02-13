import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class BaseWidget {
  EdgeInsets get allLowEdgeInsets => EdgeInsets.all(10.h);
  EdgeInsets get allNormalEdgeInsets => EdgeInsets.all(20.h);
  EdgeInsets get allMediumEdgeInsets => EdgeInsets.all(40.h);

  EdgeInsets get horizontalLowEdgeInsets => EdgeInsets.symmetric(horizontal: 10.h);
  EdgeInsets get horizontalNormalEdgeInsets => EdgeInsets.symmetric(horizontal: 20.h);
  EdgeInsets get horizontalMediumEdgeInsets => EdgeInsets.symmetric(horizontal: 40.h);

  EdgeInsets get verticalLowEdgeInsets => EdgeInsets.symmetric(vertical: 10.h);
  EdgeInsets get verticalNormalEdgeInsets => EdgeInsets.symmetric(vertical: 20.h);
  EdgeInsets get verticalMediumEdgeInsets => EdgeInsets.symmetric(vertical: 40.h);

  EdgeInsets get onlyTopLowEdgeInsets => EdgeInsets.only(top: 10.h);

  Radius get lowCircularRadius => Radius.circular(5.r);
  Radius get lowHCircularRadius => Radius.circular(5.r);
  Radius get normalCircularRadius => Radius.circular(10.r);
  Radius get mediumCircularRadius => Radius.circular(20.r);
  Radius get highCircularRadius => Radius.circular(40.r);

  BorderRadius get lowBorderRadius => BorderRadius.all(lowCircularRadius);
  BorderRadius get lowHBorderRadius => BorderRadius.all(lowHCircularRadius);
  BorderRadius get normalBorderRadius => BorderRadius.all(normalCircularRadius);
  BorderRadius get mediumBorderRadius => BorderRadius.all(mediumCircularRadius);
  BorderRadius get highBorderRadius => BorderRadius.all(highCircularRadius);

  RoundedRectangleBorder get lowRoundedRectangleBorder => RoundedRectangleBorder(borderRadius: lowBorderRadius);
  RoundedRectangleBorder get lowHRoundedRectangleBorder => RoundedRectangleBorder(borderRadius: lowHBorderRadius);
  RoundedRectangleBorder get normalRoundedRectangleBorder => RoundedRectangleBorder(borderRadius: normalBorderRadius);
  RoundedRectangleBorder get mediumRoundedRectangleBorder => RoundedRectangleBorder(borderRadius: mediumBorderRadius);
}
