import 'dart:html';

import 'package:dio_youtube/controller/reqres_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReqresUser extends StatelessWidget {
  const ReqresUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<ReqresController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio Example'),
      ),
      body: Obx(() => _controller.isLoiding.isTrue
          ? const CircularProgressIndicator()
          : Card(
              child: ListTile(
              title: Text('${_controller.reqresModel!.data!.firstName}'),
              leading: CircleAvatar(
                child:
                    Image.network('${_controller.reqresModel!.data!.avatar}'),
              ),
              subtitle: Text('${_controller.reqresModel!.data!.email}'),
            ))),
    );
  }
}
