import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:git_get/di/global_binding.dart';
import 'package:git_get/ui/splash/splash_screen.dart';

void main() {
  /// Untuk menginisialisasi package-package yg digunakan (memastikan semua sudah aman)
  WidgetsFlutterBinding.ensureInitialized();

  /// Inisiasi dependency injection
  GlobalBinding().dependencies();

  /// Jalankan Aplikasi
  runApp(const GitGetApp());
}

class GitGetApp extends StatelessWidget {
  const GitGetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GitGetApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      builder: EasyLoading.init(),
      home: const SplashScreen(),
    );
  }
}
