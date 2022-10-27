import 'package:dio/dio.dart';
import 'package:git_get/const/app_const.dart';

class NetworkCore {
  final dio = Dio();

  NetworkCore() {
    dio.options = BaseOptions(
      baseUrl: AppConst.baseUrl
    );
  }
}