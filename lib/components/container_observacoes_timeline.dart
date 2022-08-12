import 'package:flutter/material.dart';
import 'package:teste_timeline/colors.dart';
import 'package:teste_timeline/text_styles.dart';

class ContainerObservacoesTimeline extends StatelessWidget {
  final List<String> observacoes;
  const ContainerObservacoesTimeline(this.observacoes, {Key key})
      : super(key: key);

  Widget observacaoItem(String observacao) {
    Color cor = Colors.grey;
    Widget tracoVertical = Container(
      height: 10,
      width: 1,
      color: cor,
    );
    return Container(
      width: double.infinity,
      child: Row(children: [
        Column(
          children: [
            tracoVertical,
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: cor),
              ),
            ),
            tracoVertical
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Text(
          observacao,
          style: TextStyle(
            fontFamily: StyleText.fontRegular,
            fontSize: 12,
            color: StyleColors.colorComplement1,
          ),
        ))
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: observacoes
              .map((observacao) => observacaoItem(observacao))
              .toList(),
        ));
  }
}
