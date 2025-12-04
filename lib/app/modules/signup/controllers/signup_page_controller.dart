import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class SignupPageController extends GetxController {
  bool obscurePass = true;

  FilePickerResult? profileImage;

  void toggleObscurePass() {
    obscurePass = !obscurePass;
    update();
  }

  Future<void> pickProfileImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      profileImage = result;
      update();
    }
  }
}
