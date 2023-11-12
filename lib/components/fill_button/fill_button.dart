import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_day_one_fill_client/color_schemes.dart';
import 'package:one_day_one_fill_client/text_style.dart';
import 'package:tap_debouncer/tap_debouncer.dart';

part 'fill_button_style.dart';

class FillButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool? isGreyBackColor;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final double childWidgetPadding;
  final double childWidgetSidePadding;
  final Color? backgroundColor;
  final Widget? child;

  const FillButton(
    final BuildContext context, {
    final Key? key,
    this.onPressed,
    this.isGreyBackColor,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.childWidgetPadding = 14,
    this.childWidgetSidePadding = 20,
    this.backgroundColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TapDebouncer(
      onTap: () async {
        HapticFeedback.mediumImpact();
        return onPressed?.call();
      },
      builder: (context, onTap) => ElevatedButton(
        key: key,
        onPressed: onTap,
        onLongPress: onLongPress,
        style: _FillButtonStyleObject(context, isGreyBackColor, backgroundColor),
        onHover: onHover,
        onFocusChange: onFocusChange,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: childWidgetPadding,
            horizontal: childWidgetSidePadding,
          ),
          child: child,
        ),
      ),
      waitBuilder: (context, widget) => ElevatedButton(
        onPressed: null,
        onLongPress: onLongPress,
        style: _FillButtonStyleObject(context, isGreyBackColor, backgroundColor),
        onHover: onHover,
        onFocusChange: onFocusChange,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: childWidgetPadding,
            horizontal: childWidgetSidePadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Row(
                  children: [
                    SizedBox(
                      width: _FillButtonStyle.circularProgressIndicatorSize,
                      height: _FillButtonStyle.circularProgressIndicatorSize,
                      child: CircularProgressIndicator(
                        strokeWidth: _FillButtonStyle.circularProgressIndicatorStroke,
                        color: context.color.primary.withAlpha(200),
                      ),
                    ),
                  ],
                ),
              ),
              Center(child: child ?? const SizedBox.shrink()),
              const Flexible(child: SizedBox.shrink()),
            ],
          ),
        ),
      ),
    );
  }
}
