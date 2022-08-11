import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:teste_timeline/colors.dart';
import 'package:teste_timeline/text_styles.dart';
import 'package:teste_timeline/timeline/timeline_item_data.dart';

class ExpandableComponent extends StatelessWidget {
  final String title;
  final TimelineItemData itemData;
  final double margin;

  ExpandableComponent(
      {@required this.title, @required this.itemData, this.margin = 0});
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return ExpandableNotifier(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: margin),
        alignment: Alignment.center,
        width: screen.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Expandable(
          // <-- Driven by ExpandableController from ExpandableNotifier
          collapsed: ExpandableButton(
            // <-- Expands when tapped on the cover photo
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${title}',
                            style: StyleText.textPageColorPrimaryLargeBold,
                          ),
                          SizedBox(width: 10),
                          Icon(LineIcons.angleDown,
                              color: StyleColors.colorSecondary, size: 28),
                        ]),
                  ),
                  if (itemData.date != null)
                    Container(
                      child: Text('Concluído dia ${(itemData.date)}'),
                    )
                ],
              ),
            ),
          ),
          expanded: Column(children: [
            ExpandableButton(
              // <-- Collapses when tapped on
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
                child: Column(children: [
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
                  )
                ]),
              ),
            ),
          ]),
        ), /* Column(
          children: [
            Text(
              '${title}',
              style: StyleText.textPageColorPrimaryLargeBold,
            )
          ],
        ) */
      ),
    );

    /*  return Container(
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
                      //width: screen.width - 42,
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
                      //width: screen.width - 42,
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
                          )
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
    ); */
  }
}
