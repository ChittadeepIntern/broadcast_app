import 'package:broadcast_app/controllers/sign_in_controller.dart';
import 'package:broadcast_app/controllers/sign_up_controller.dart';
import 'package:get/get.dart';

class SignUpBinding extends Bindings{
@override
  void dependencies() {
    Get.lazyPut<SignUpController>(()=>SignUpController());
  }
}

class SignInBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(()=>SignInController());
  }
}