import 'package:get/get.dart';
import 'package:git_get/data/network_core.dart';
import 'package:git_get/data/storage_core.dart';

/// Inisiasi dependency injection
class GlobalBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NetworkCore>(NetworkCore(), permanent: true);
    Get.put<StorageCore>(StorageCore(), permanent: true);
  }
}