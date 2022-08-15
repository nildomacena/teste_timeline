import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:teste_timeline/colors.dart';
import 'package:teste_timeline/components/container_observacoes_timeline.dart';
import 'package:teste_timeline/shared/utils.dart';
import 'package:teste_timeline/text_styles.dart';
import 'package:teste_timeline/timeline/timeline_item_data.dart';

class ExpandableComponentTimeline extends StatelessWidget {
  final TimelineItemData itemData;
  final double margin;

  ExpandableComponentTimeline({@required this.itemData, this.margin = 0});
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    Widget tituloExpandable = Expanded(
      child: Container(
        height: 60,
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              '${itemData.title}',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: StyleText.fontBold,
                color: StyleColors.colorPrimary,
              ),
              maxLines: 2,
              //style: StyleText.textPageColorPrimaryLargeBold,
            ),
            SizedBox(
              height: 5,
            ),
            if (itemData.date != null)
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Concluído dia ${Utils.formatDate(itemData.date)}',
                    style: TextStyle(
                      fontFamily: StyleText.fontRegular,
                      fontSize: 13,
                      color: StyleColors.colorComplement1,
                    )),
              )
          ],
        ),
      ),
    );

    return ExpandableNotifier(
      initialExpanded: false,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: margin),
        padding: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        width: screen.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Expandable(
          collapsed: ExpandableButton(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    tituloExpandable,
                    SizedBox(width: 10),
                    Icon(LineIcons.angleDown,
                        color: StyleColors.colorSecondary, size: 28),
                  ]),
            ),
          ),
          expanded: ExpandableButton(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            tituloExpandable,
                            SizedBox(width: 10),
                            Icon(LineIcons.angleUp,
                                color: StyleColors.colorSecondary, size: 28),
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    if (itemData.observacoes != null &&
                        itemData.observacoes.isNotEmpty)
                      ContainerObservacoesTimeline(itemData.observacoes),
                    /*  ContainerObservacoesTimeline([
                      '08/08/2022 - Pendente',
                      '09/08/2022 - Cadastro Concluído',
                    ]), */
                  ],
                ),
              ),
            ),
          ),
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
/* 
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
