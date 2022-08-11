import 'package:flutter/material.dart';
import 'package:teste_timeline/colors.dart';

class DefaultAnimatedSwitcherComponentRounded extends StatelessWidget {
  final Function function;
  final Widget child;
  final bool clickable;
  final bool hasShadow;
  final double verticalPadding;
  final double horizontalPadding;
  final double height;
  final Color color;

  DefaultAnimatedSwitcherComponentRounded(
      {@required this.function,
      @required this.child,
      @required this.clickable,
      this.height = 60,
      this.verticalPadding = 0,
      this.horizontalPadding = 0,
      this.color = StyleColors.primary,
      this.hasShadow = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      child: InkWell(
        onTap: clickable ? function : null,
        child: Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: color),
          child: Center(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
