import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:workspace/Controller/tap_controller.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    ));

class MyFirst extends StatelessWidget {
  const MyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Center(
                child: Text(
                  controller.x.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.decreaseX();
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
                    'decrease X',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
