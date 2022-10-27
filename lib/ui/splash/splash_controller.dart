import 'dart:async';

import 'package:get/get.dart';
import 'package:git_get/ui/main/main_screen.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    /// Untuk menunggu 3 detik di splash screen
    Timer(const Duration(seconds: 3), () {
      /// Pengganti Navigator (push diganti dengan Get.to, dan pushReplacement diganti dengan Get.offAll)
      Get.offAll(() => const MainScreen());
    });
  }
}