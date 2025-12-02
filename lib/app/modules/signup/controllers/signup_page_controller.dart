import 'package:get/get.dart';

class SignupPageController extends GetxController {
  bool obscurePass = true;

  void toggleObscurePass() {
    obscurePass = !obscurePass;
    update();
  }
}
