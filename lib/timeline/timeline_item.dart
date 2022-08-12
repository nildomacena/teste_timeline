import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:teste_timeline/components/expandable_component_timeline.dart';
import 'package:teste_timeline/timeline/timeline_item_data.dart';

class TimelineItem extends StatelessWidget {
  final TimelineItemData itemData;
  const TimelineItem(this.itemData, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Color indicatorColor = Color(0xFF5451FB);

    Widget indicador() {
      IconData icon = itemData.checked
          ? LineIcons.check
          : itemData.previous.checked
              ? LineIcons.horizontalEllipsis
              : null;
      return Container(
        height: 35,
        width: 35,
        child: itemData.checked
            ? Icon(
                LineIcons.check,
                color: Colors.white,
                size: 24,
              )
            : itemData.current
                ? Icon(
                    LineIcons.horizontalEllipsis,
                    color: Colors.white,
                    size: 24,
                  )
                : null,
        decoration: BoxDecoration(
            color: itemData.checked
                ? indicatorColor
                : itemData.current
                    ? Colors.cyan
                    : Colors.transparent,
            border: Border.all(
                color: itemData.checked || itemData.current
                    ? Colors.transparent
                    : Colors.grey),
            shape: BoxShape.circle),
      );
    }

    Widget barra([bool checked]) {
      return Container(
        width: 3,
        decoration: BoxDecoration(
          color: checked ?? itemData.checked ? indicatorColor : Colors.grey,
        ),
      );
    }

    Widget containerInfo() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: ExpandableComponentTimeline(
          itemData: itemData,
        ),
      );
    }

    return Container(
      width: width,
      //padding: EdgeInsets.all(20),
      // color: Colors.green,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //color: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: itemData.previous == null
                          ? Container()
                          : barra(itemData.previous.checked)),
                  /*  if (itemData.previous == null) ...{
                    Container(
                      height: 20,
                    )
                  } else ...{
                    Container(height: 20, child: barra()),
                  }, */
                  indicador(),
                  Expanded(flex: 3, child: barra())
                ],
              ),
            ),
            Expanded(flex: 5, child: containerInfo()),
            SizedBox(
              width: 30,
            )
          ],
        ),
      ),
    );
  }
}
