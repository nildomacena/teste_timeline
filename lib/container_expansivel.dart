import 'package:flutter/material.dart';

class ContainerExpansivel extends StatefulWidget {
  final Widget child;
  const ContainerExpansivel({this.child, Key key}) : super(key: key);

  @override
  State<ContainerExpansivel> createState() => _ContainerExpansivelState();
}

class _ContainerExpansivelState extends State<ContainerExpansivel> {
  bool expandido = false;

  toggleExpandido() {
    setState(() {
      expandido = !expandido;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      // color: Colors.red,
      duration: Duration(seconds: 1),
      curve: Curves.linear,
      height: expandido ? 300 : null,
      child: Stack(
        fit: StackFit.expand,
        children: [
          widget.child,
          Positioned(
              top: 5,
              right: 5,
              child: IconButton(
                icon:
                    Icon(expandido ? Icons.arrow_upward : Icons.arrow_downward),
                onPressed: toggleExpandido,
              )),
        ],
      ),
    );
  }
}
