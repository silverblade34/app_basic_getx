import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  await GetStorage.init();
runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
      ),
      builder: (context, widget) {
        widget = EasyLoading.init()(context, widget);
        return widget;
      },
    ),
  );
}
