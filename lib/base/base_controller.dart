import 'package:get/get.dart';
import 'package:git_get/data/network_core.dart';
import 'package:git_get/data/storage_core.dart';

abstract class BaseController extends GetxController {
  final networkCore = Get.find<NetworkCore>();
  final storageCore = Get.find<StorageCore>();

}