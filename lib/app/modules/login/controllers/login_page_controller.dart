import 'package:get/get.dart';

class LoginPageController extends GetxController {
  bool obscurePass = true;

  void toggleObscurePass() {
    obscurePass = !obscurePass;
    update();
  }
}
