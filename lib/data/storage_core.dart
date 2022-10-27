import 'package:dio/dio.dart';
import 'package:git_get/const/app_const.dart';

class StorageCore {
  final dio = Dio();
  final token = "sdjkadjkasdjkalbdjlkabsj";

  StorageCore() {
    dio.options = BaseOptions(
        baseUrl: AppConst.baseUrl
    );
  }
}