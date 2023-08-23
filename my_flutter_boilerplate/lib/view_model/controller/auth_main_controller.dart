import 'package:get/get.dart';

class AuthMainScreenController extends GetxController {
  var index = 0.obs;

  setIndex(var index) async {
    this.index.value = index;

    update();
  }

  get getIndex => index.value;
}
