import 'package:dio_youtube/model/reqres_model.dart';
import 'package:dio_youtube/services/reqres_services.dart';
import 'package:get/get.dart';

class ReqresController extends GetxController {
  ReqresController() {
    _reqresServices = Get.find<ReqresServices>();
    getResponse();
  }
  ReqresServices? _reqresServices;
  ReqresModel? reqresModel;

  RxBool isLoiding = false.obs;

  void getResponse() async {
    showLoading();
    reqresModel = await _reqresServices!.userServices();
    hideLoading();
  }

  void showLoading() => isLoiding.toggle();
  void hideLoading() => isLoiding.toggle();
}
