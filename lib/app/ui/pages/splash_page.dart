import 'package:app_basic_getx/app/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('SplashPage')),

    body: SafeArea(
      child: Text('SplashController'))
    );
  }
}