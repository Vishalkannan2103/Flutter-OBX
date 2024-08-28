import 'package:get/get.dart';

import 'student.dart';

class MyController extends GetxController {
  var student = Student();
  void convertToUppercase() {
    student.name.value = student.name.value.toUpperCase();
  }

  void convertToLowercase() {
    student.name.value = student.name.value.toLowerCase();
  }
}
