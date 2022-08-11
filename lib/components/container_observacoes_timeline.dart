import 'package:flutter/material.dart';

class ContainerObservacoesTimeline extends StatelessWidget {
  final List<String> observacoes;
  const ContainerObservacoesTimeline(this.observacoes, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 300,
      color: Colors.red

      /* child: ListView.builder(
          shrinkWrap: true,
          itemCount: observacoes.length,
          itemBuilder: (context, index) => Text(observacoes[index])) */
      ,
    );
  }
}
