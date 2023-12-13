import 'package:flutter/material.dart';

const textColor = Color(0xFF0a0806);
const backgroundColor = Color(0xFFfcfbf9);
const primaryColor = Color(0xFFcc8835);
const primaryFgColor = Color(0xFF0a0806);
const secondaryColor = Color(0xFFf1c289);
const secondaryFgColor = Color(0xFF0a0806);
const accentColor = Color(0xFFfda945);
const accentFgColor = Color(0xFF0a0806);

const colorScheme = ColorScheme(
  brightness: Brightness.light,
  background: backgroundColor,
  onBackground: textColor,
  primary: primaryColor,
  onPrimary: primaryFgColor,
  secondary: secondaryColor,
  onSecondary: secondaryFgColor,
  tertiary: accentColor,
  onTertiary: accentFgColor,
  surface: backgroundColor,
  onSurface: textColor,
  error: Brightness.light == Brightness.light
      ? Color(0xffB3261E)
      : Color(0xffF2B8B5),
  onError: Brightness.light == Brightness.light
      ? Color(0xffFFFFFF)
      : Color(0xff601410),
);
