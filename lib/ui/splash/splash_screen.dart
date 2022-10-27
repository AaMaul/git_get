import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_get/ui/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Dibuka dengan get builder dan diberikan controller-nya
    return GetBuilder<SplashController>(
        /// inisiasi splash controller-nya
        init: SplashController(),
        builder: (controller) => const Scaffold(
              body: Center(
                child: Icon(Icons.ac_unit, size: 72),
              ),
            ));
  }
}
