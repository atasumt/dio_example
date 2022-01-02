import 'package:dio/dio.dart';
import 'package:dio_youtube/dio/dio_config.dart';
import 'package:dio_youtube/dio/get_dio.dart';
import 'package:dio_youtube/endpoints/reqres_end_point.dart';
import 'package:dio_youtube/model/reqres_model.dart';

class ReqresServices {
  Future<ReqresModel> userServices() async {
    try {
      Response response = await getDio(dioOptions).get(reqresUser());
      ReqresModel user = ReqresModel.fromJson(response.data);
      return user;
    } catch (e) {
      throw e.toString();
    }
  }
}
