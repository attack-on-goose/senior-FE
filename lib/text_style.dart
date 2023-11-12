import 'package:flutter/material.dart';

@immutable
abstract class OneTextStyle extends TextStyle {
  // headline 1
  static TextStyle h1(final BuildContext context, [final Color? color]) => TextStyle(
        // black
        fontWeight: FontWeight.bold,
        fontSize: 28,
        height: 0.85,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 2
  static TextStyle h2(final BuildContext context, [final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.bold,
        fontSize: 22,
        height: 1.25,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 3
  static TextStyle h3b(final BuildContext context, [final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.bold,
        fontSize: 18,
        height: 1.2,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h3m(final BuildContext context, [final Color? color]) => TextStyle(
        // medium
        fontWeight: FontWeight.w500,
        fontSize: 18,
        height: 1.0,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h3r(final BuildContext context, [final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w400,
        fontSize: 18,
        height: 1.0,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 4
  static TextStyle h4b(final BuildContext context, [final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.bold,
        fontSize: 16,
        height: 1.2,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h4m(final BuildContext context, [final Color? color]) => TextStyle(
        // medium
        fontWeight: FontWeight.bold,
        fontSize: 16,
        height: 0.95,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h4r(final BuildContext context, [final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.1,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 5
  static TextStyle h5b(final BuildContext context, [final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.bold,
        fontSize: 14,
        height: 1.09,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h5m(final BuildContext context, [final Color? color]) => TextStyle(
        // medium
        fontWeight: FontWeight.bold,
        fontSize: 14,
        height: 1.09,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h5r(final BuildContext context, [final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.20,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 6
  static TextStyle h6b(final BuildContext context, [final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.bold,
        fontSize: 13,
        height: 1.24,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h6m(final BuildContext context, [final Color? color]) => TextStyle(
        // medium
        fontWeight: FontWeight.bold,
        fontSize: 13,
        height: 1.24,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h6r(final BuildContext context, [final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w400,
        fontSize: 13,
        height: 1.24,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 7
  static TextStyle h7b(final BuildContext context, [final Color? color]) => TextStyle(
        // bold
        fontWeight: FontWeight.bold,
        fontSize: 12,
        height: 1.15,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h7m(final BuildContext context, [final Color? color]) => TextStyle(
        // medium
        fontWeight: FontWeight.bold,
        fontSize: 12,
        height: 1.15,
        letterSpacing: -0.41,
        color: color,
      );

  static TextStyle h7r(final BuildContext context, [final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.12,
        letterSpacing: -0.41,
        color: color,
      );

  // headline 8
  static TextStyle h8(final BuildContext context, [final Color? color]) => TextStyle(
        // regular
        fontWeight: FontWeight.w500,
        fontSize: 10,
        height: 1.24,
        letterSpacing: -0.41,
        color: color,
      );
}
