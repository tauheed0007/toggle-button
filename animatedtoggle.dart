import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground/animated_toggle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Toggle Button'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _toggleValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Button'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedToggle(
              values: ['English', 'Arabic'],
              onToggleCallback: (value) {
                setState(() {
                  _toggleValue = value;
                });
              },
              buttonColor: const Color(0xFF0A3157),
              backgroundColor: const Color(0xFFB5C1CC),
              textColor: const Color(0xFFFFFFFF),
            ),
            Text('Toggle Value : $_toggleValue'),
          ],
        ),
      ),
    );
  }
}
