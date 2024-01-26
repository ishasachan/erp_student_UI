import 'package:erp_practise/controllers/auth_controller.dart';
import 'package:get/get.dart';

class AllBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
  }
}
