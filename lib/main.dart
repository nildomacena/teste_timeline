import 'package:flutter/material.dart';
import 'package:teste_timeline/timeline/timeline_item.dart';
import 'package:teste_timeline/timeline/timeline_item_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  final int passosPreenchidos = 2;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Color indicatorColor = Color(0xFF5451FB);
    // Widget indicador([bool preenchido = false]) {
    //   // return DefaultAnimatedSwitcherComponentRounded(
    //   //   verticalPadding: 20,
    //   //   function: () => {},
    //   //   child: IconButtonContentComponent(
    //   //     icon: LineIcons.check,
    //   //     title: "Sair",
    //   //   ),
    //   //   clickable: true,
    //   // );
    //   return Container(
    //     height: 40,
    //     width: 40,
    //     child: preenchido
    //         ? Icon(
    //             LineIcons.check,
    //             color: Colors.white,
    //             size: 26,
    //           )
    //         : null,
    //     decoration: BoxDecoration(
    //         color: preenchido ? indicatorColor : Colors.transparent,
    //         border: Border.all(
    //             color: preenchido ? Colors.transparent : indicatorColor),
    //         shape: BoxShape.circle),
    //   );
    // }

    // Widget barra([bool preenchido = true]) {
    //   return Container(
    //     width: 2,
    //     //height: 100,
    //     decoration: BoxDecoration(
    //       color: preenchido ? indicatorColor : Colors.grey,
    //       /* border: Border.all(
    //           color: preenchido ? Colors.transparent : indicatorColor), */
    //     ),
    //   );
    // }

    // Widget containerInfo() {
    //   return Container(
    //     margin: EdgeInsets.symmetric(horizontal: 10),
    //     child: Card(
    //       child: Container(
    //         padding: EdgeInsets.all(20),
    //         child: Text(
    //             'Sit occaecat consectetur veniam nulla voluptate voluptate aliqua commodo consectetur exercitation consequat. Labore labore minim ipsum mollit tempor eu.' *
    //                 2),
    //       ),
    //     ),
    //   );
    // }

    // Widget timeLineTile(int index) {
    //   return Container(
    //     width: width,
    //     //padding: EdgeInsets.all(20),
    //     child: IntrinsicHeight(
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.stretch,
    //         children: [
    //           Container(
    //             //color: Colors.green,
    //             padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               children: [
    //                 if (index == 0) ...{
    //                   Container(
    //                     height: 20,
    //                   )
    //                 } else ...{
    //                   Container(
    //                       height: 20,
    //                       child: barra((index - 1) <= passosPreenchidos)),
    //                 },
    //                 indicador(index <= passosPreenchidos),
    //                 Expanded(child: barra(index <= passosPreenchidos))
    //               ],
    //             ),
    //           ),
    //           Expanded(
    //               flex: 5,
    //               child: ContainerExpansivel(
    //                 child: Padding(
    //                   padding: const EdgeInsets.symmetric(vertical: 0),
    //                   child: containerInfo(),
    //                 ),
    //               ))
    //         ],
    //       ),
    //     ),
    //   );
    // }

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
            itemCount: TimelineItemData.fakeData().length,
            padding: EdgeInsets.only(top: 30),
            itemBuilder: ((context, index) =>
                TimelineItem(TimelineItemData.fakeData()[index]))),
      ),
    );
  }
}
