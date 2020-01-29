import 'package:flutter/material.dart';
import 'dart:math' as math;
Color color = Colors.blue; // make it at root level

void main() {
  runApp(MaterialApp(home: Page1()));
}
class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();

}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (


      backgroundColor: color,
      appBar: AppBar(title: Center( child:Text("Hey there"))),
      body:
      GestureDetector(
        onTap: () => setState(() => color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0)),
      ),
    );






  }
}