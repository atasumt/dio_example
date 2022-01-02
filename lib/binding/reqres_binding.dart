import 'package:dio_youtube/controller/reqres_controller.dart';
import 'package:dio_youtube/services/reqres_services.dart';
import 'package:get/get.dart';

class ReqresBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ReqresServices>(ReqresServices());
    Get.lazyPut<ReqresController>(() => ReqresController());
  }
}
