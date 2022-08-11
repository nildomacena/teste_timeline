import 'package:flutter/material.dart';

class TimelineItemData {
  bool checked;
  bool current;
  TimelineItemData previous;
  String title;
  DateTime date;

  TimelineItemData({
    @required this.checked,
    @required this.current,
    this.previous,
    this.date,
    this.title,
  }) {
    date = DateTime.now();
  }

  static List<TimelineItemData> fakeData() => [
        TimelineItemData(
            checked: true,
            current: false,
            date: DateTime.now(),
            title: 'Cota Contemplada - Com Restrição'),
        TimelineItemData(
            previous: TimelineItemData(
                checked: true,
                current: false,
                date: DateTime.now(),
                title: 'Cota Contemplada - Com Restrição'),
            checked: true,
            date: DateTime.now(),
            current: false,
            title: 'Pagamento de Lance'),
        TimelineItemData(
            checked: true,
            current: false,
            previous: TimelineItemData(
                checked: true,
                current: false,
                date: DateTime.now(),
                title: 'Cota Contemplada - Com Restrição'),
            date: DateTime.now(),
            title: 'Envio da Documentação Cadastral'),
        TimelineItemData(
            checked: false,
            current: false,
            date: DateTime.now(),
            previous: TimelineItemData(
                checked: true,
                current: false,
                title: 'Cota Contemplada - Com Restrição'),
            title: 'Análise de Crédito'),
        TimelineItemData(
            checked: false,
            current: false,
            previous: TimelineItemData(
                checked: false,
                current: false,
                title: 'Cota Contemplada - Com Restrição'),
            title: 'Análise do Bem'),
        TimelineItemData(
            checked: false,
            current: false,
            previous: TimelineItemData(
                checked: false,
                current: false,
                title: 'Cota Contemplada - Com Restrição'),
            title: 'Recebimento do Contrato'),
        TimelineItemData(
            checked: false,
            current: false,
            previous: TimelineItemData(
                checked: false,
                current: false,
                title: 'Cota Contemplada - Com Restrição'),
            title: 'Alienação do Bem'),
        TimelineItemData(
            checked: false,
            current: false,
            previous: TimelineItemData(
                checked: false,
                current: false,
                title: 'Cota Contemplada - Com Restrição'),
            title: 'Pagamento do Crédito'),
      ];
}


/* 

24

Cota Contemplada - Com Restrição

25

Cota Contemplada - Pré Aprovada

26

Pagamento de Lance

27

Envio da Documentação Cadastral

28

Análise de Crédito

29

Envio da Documentação do Bem

30

Análise do Bem

31

Recebimento do Contrato

32

Alienação do Bem

33

Pagamento do Crédito */