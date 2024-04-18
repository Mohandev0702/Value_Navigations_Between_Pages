import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:workspace/Controller/tap_controller.dart';
import 'package:workspace/My%20first%20page.dart';

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
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 0),
              GetBuilder<TapController>(builder: (tapController) {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Color(0xff89dad0),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Center(
                    child: Text(
                      tapController.x.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                );
              }),
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
                onTap: () {
                  Get.to(() => MyFirst());
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
                      'Go To My First Page',
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
      ),
    );
  }
}
