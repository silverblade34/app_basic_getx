import 'package:app_basic_getx/app/ui/pages/home/home_page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.HOME, page:()=> HomePage(),)
  ];
}