import 'package:businesslogic/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "Name is ${myController.student.name}",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: Text('Upper'),
                onPressed: () {
                  myController.convertToUppercase();
                },
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                child: Text('Lower'),
                onPressed: () {
                  myController.convertToLowercase();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
