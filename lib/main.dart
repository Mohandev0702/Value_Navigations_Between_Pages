import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:workspace/Controller/tap_controller.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  controller.increaseX();
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Center(
                    child: Text(
                      'Hi There',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Center(
                    child: Text(
                      'Hi There',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Center(
                    child: Text(
                      'Hi There',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
