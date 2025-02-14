import 'package:get/get.dart';
import 'package:regestration_page/Bindings/RegistrationBinding.dart';
import 'package:regestration_page/Routes/AppRoute.dart';
import 'package:regestration_page/Views/Registration.dart';

class AppPaged{
  static final List <GetPage> pages = [
    GetPage(name: AppRoute.register, page: () => const Registration(), binding: RegistrationBinding())
  ];
}