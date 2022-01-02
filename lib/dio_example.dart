import 'package:dio_youtube/view/reqres_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binding/reqres_binding.dart';

class DioExample extends StatelessWidget {
  const DioExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dio Example',
      theme: ThemeData(primaryColor: Colors.purple),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const ReqresUser(),
          binding: ReqresBinding(),
        )
      ],
    );
  }
}
