import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(title: 'Lab work #6'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {
    _k = min(_g, _h);
    _e = min(_b, _d);
  }
  final double _borderRadius = 10;
  final EdgeInsets _padding = const EdgeInsets.all(16);

  final double _d = 100, _f = 100, _i = 100;
  final double _b = 200;
  final double _g = 350;
  final double _h = 550, _m = 550;
  final double _n = 5, _p = 5, _r = 5, _s = 5;
  double _e = 0, _k = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: const Color(0xFFA85CF9),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
            margin: EdgeInsets.only(top: 10, bottom: _e),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(_borderRadius),
                      )),
                      margin: EdgeInsets.only(left: _f),
                      color: Colors.blue,
                      child: Container(
                        width: _g,
                        padding: _padding,
                        child: Text(
                            "Ще не вмерла України ні слава, ні воля.\nЩе нам, браття-українці, усміхнеться доля.",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(_borderRadius),
                      )),
                      margin: EdgeInsets.only(left: _k),
                      color: Colors.yellow,
                      child: Container(
                        padding: EdgeInsets.only(
                            left: _n, top: _r, right: _p, bottom: _s),
                        width: _m,
                        child: Text("Душу й тіло ми положим за нашу свободу,",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(_borderRadius),
                      )),
                      margin: EdgeInsets.only(right: _i),
                      color: Colors.red,
                      child: Container(
                        alignment: Alignment.center,
                        height: _b,
                        width: _h,
                        padding: _padding,
                        child: Text(
                            "Згинуть наші вороженьки, як роса на сонці, \nЗапануєм і ми, браття, у своїй сторонці.",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(_borderRadius),
                      )),
                      color: Colors.black,
                      child: Container(
                        alignment: Alignment.center,
                        height: _d,
                        padding: _padding,
                        child: Text(
                            "І покажем, що ми, браття, козацького роду.",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ));
}
