import 'package:get/get.dart';

class AutoPlayController extends GetxController {
  RxBool on = false.obs; // our observable

  // swap true/false & save it to observable
  void plautoggle() => on.value = on.value ? false : true;
}
