import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:teste_timeline/colors.dart';
import 'package:teste_timeline/components/expandable_row_component.dart';
import 'package:teste_timeline/components/title_value_model.dart';
import 'package:teste_timeline/default_animated_switcher_rounded.dart';
import 'package:teste_timeline/iconbuttoncontent_component.dart';
import 'package:teste_timeline/text_styles.dart';

class ExpandableComponentButton extends StatelessWidget {
  final String title;
  final List<TitleValueModel> items;
  final double margin;
  final Function function;
  final String label;
  final bool clickable;
  final Widget child;
  final IconData icon;

  ExpandableComponentButton(
      {@required this.title,
      @required this.items,
      @required this.function,
      @required this.label,
      @required this.icon,
      this.clickable = true,
      this.child,
      this.margin = 0});
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: margin),
      alignment: Alignment.center,
      width: screen.width - 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ExpandableNotifier(
            child: Column(
              children: [
                Expandable(
                  collapsed: ExpandableButton(
                    child: Container(
                      width: screen.width - 102,
                      padding: EdgeInsets.all(15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: StyleText.textPageLargeBold,
                            ),
                            SizedBox(width: 10),
                            Icon(LineIcons.angleDown,
                                color: StyleColors.colorSecondary, size: 28),
                          ]),
                    ),
                  ),
                  expanded: ExpandableButton(
                    child: Container(
                      width: screen.width - 42,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: StyleColors.colorComplement4,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                title,
                                style: StyleText.textPageColorPrimaryLargeBold,
                              ),
                              SizedBox(width: 10),
                              Icon(LineIcons.angleUp,
                                  color: StyleColors.colorPrimary, size: 28),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: items
                                .map((e) => ExpandableRowComponent(
                                      title: e.title,
                                      value: e.value,
                                    ))
                                .toList(),
                          ),
                          if (function != null) ...{
                            SizedBox(
                              height: 30,
                            ),
                            DefaultAnimatedSwitcherComponentRounded(
                                function: function,
                                child: child ??
                                    IconButtonContentComponent(
                                        icon: icon, title: label),
                                clickable: clickable),
                          }
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
