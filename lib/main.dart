import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TreeWidget(),
    );
  }
}
class TreeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TreeWidget"),
      ),
      body: Ongba(Chame(Column(children: <Widget>[Contrai(),Congai()],))),
    );
  }
}
class Ongba extends StatelessWidget {
  Widget child;

  Ongba(this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
class Chame extends StatelessWidget {
  Widget child;

  Chame(this.child);
  String tenContrai(){
    return "thanh";
  }

  String tenCongai(){
    return "hoai thanh";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
class Contrai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Chame chame = context.ancestorWidgetOfExactType(Chame);
    return Container(
      child: Text(chame.tenContrai()),
    );
  }
}
class Congai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Chame chame = context.ancestorWidgetOfExactType(Chame);
    return Container(
      child: Text(chame.tenCongai()),
    );
  }
}











