import 'package:flutter/material.dart';
import 'package:teste_timeline/colors.dart';
import 'package:teste_timeline/text_styles.dart';

class ExpandableRowComponent extends StatelessWidget {
  final String title, value;

  ExpandableRowComponent({this.title, this.value});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(
          color: StyleColors.colorGrey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(title, style: StyleText.textPage),
            SizedBox(
              height: 5.0,
            ),
            Text(value, style: StyleText.textPageBold),
          ],
        ),
      ],
    );
  }
}
