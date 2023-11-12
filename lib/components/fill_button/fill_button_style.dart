part of 'fill_button.dart';

class _FillButtonStyleObject extends ButtonStyle {
  _FillButtonStyleObject(final BuildContext context,
      [final bool? isGreyBackColor, Color? backgroundColor])
      : super(
          splashFactory: NoSplash.splashFactory,
          padding: MaterialStateProperty.all(_FillButtonStyle.buttonPadding),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return _FillButtonStyle.fillButtonDisabledBackgroundColor;
            }
            if (isGreyBackColor ?? false) {
              return context.color.secondary;
            }
            return backgroundColor ?? context.color.primary;
          }),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: _FillButtonStyle.buttonBorderRadius),
          ),
          textStyle: MaterialStateProperty.all(OneTextStyle.h4m(context)),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            return context.color.background;
          }),
        );
}

abstract class _FillButtonStyle {
  static const double circularProgressIndicatorSize = 15;
  static const double circularProgressIndicatorStroke = 2.5;
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(vertical: 2.0);
  static BorderRadius buttonBorderRadius = BorderRadius.circular(14);
  static const Color fillButtonDisabledBackgroundColor = Color(0x4D8D8D8D);
}
