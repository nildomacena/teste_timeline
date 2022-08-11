import 'package:flutter/material.dart';
import 'package:teste_timeline/text_styles.dart';

class IconButtonContentComponent extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isTxtClear;

  IconButtonContentComponent(
      {@required this.icon, @required this.title, this.isTxtClear = false});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: isTxtClear ? Colors.white : Colors.white,
          size: 25,
        ),
        SizedBox(
          width: 10,
        ),
        Text(title,
            style: isTxtClear
                ? StyleText.btColorSecondary
                : StyleText.btColorSecondary),
      ],
    );
  }
}
