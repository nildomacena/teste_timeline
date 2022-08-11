import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:teste_timeline/container_expansivel.dart';
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
      return Container(
        height: 40,
        width: 40,
        child: itemData.checked
            ? Icon(
                LineIcons.check,
                color: Colors.white,
                size: 26,
              )
            : null,
        decoration: BoxDecoration(
            color: itemData.checked ? indicatorColor : Colors.transparent,
            border: Border.all(
                color: itemData.checked ? Colors.transparent : indicatorColor),
            shape: BoxShape.circle),
      );
    }

    Widget barra() {
      return Container(
        width: 2,
        decoration: BoxDecoration(
          color: itemData.checked ? indicatorColor : Colors.grey,
        ),
      );
    }

    Widget containerInfo() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text(
                'Sit occaecat consectetur veniam nulla voluptate voluptate aliqua commodo consectetur exercitation consequat. Labore labore minim ipsum mollit tempor eu.' *
                    2),
          ),
        ),
      );
    }

    return Container(
      width: width,
      //padding: EdgeInsets.all(20),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              //color: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (itemData.previous == null) ...{
                    Container(
                      height: 20,
                    )
                  } else ...{
                    Container(height: 20, child: barra()),
                  },
                  indicador(),
                  Expanded(child: barra())
                ],
              ),
            ),
            Expanded(
                flex: 5,
                child: ContainerExpansivel(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: containerInfo(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
