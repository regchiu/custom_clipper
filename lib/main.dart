import 'package:custom_clipper/Isosceles%20_triangle_clipper.dart';
import 'package:custom_clipper/arc_to_point_rectangle_clipper.dart';
import 'package:custom_clipper/bezier_curve_triangle_clipper.dart';
import 'package:custom_clipper/right_triangle_clipper.dart';
import 'package:flutter/material.dart';

import 'cubic_curve_triangle_clipper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coustom Clipper',
      theme: ThemeData(
        primaryColor: Colors.orange[200],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> tabs = [
    'lineTo',
    'moveTo',
    'quadraticBezierTo',
    'cubicTo',
    'arcToPoint'
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Coustom Clipper'),
          bottom: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              ...tabs.map((tab) => Tab(
                    text: tab,
                  ))
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(40.0),
                child: ClipPath(
                  clipper: RightTriangleClipper(),
                  child: Container(
                    color: Colors.orange[200],
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(40.0),
                child: ClipPath(
                  clipper: IsoscelesTriangleClipper(),
                  child: Container(
                    color: Colors.orange[200],
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(40.0),
                child: ClipPath(
                  clipper: BezierCurveTriangleClipper(),
                  child: Container(
                    color: Colors.orange[200],
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(40.0),
                child: ClipPath(
                  clipper: CubicCurveTriangleClipper(),
                  child: Container(
                    color: Colors.orange[200],
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(40.0),
                child: ClipPath(
                  clipper: ArcToPointRectriangleClipper(),
                  child: Container(
                    color: Colors.orange[200],
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
