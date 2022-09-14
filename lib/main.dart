import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';

void main() {
  runApp(tst2());
}

class tst2 extends StatefulWidget {
  const tst2({super.key});

  @override
  State<tst2> createState() => _tst2State();
}

class _tst2State extends State<tst2> {
  PageController controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: <Widget>[page1(), page2(), page3(), page4()],
        ),
      ),
    );
  }
}
