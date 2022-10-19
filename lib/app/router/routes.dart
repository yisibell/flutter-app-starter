import 'package:get/get.dart';
import '../views/home/home.dart';
import '../views/about/about.dart';

final appRoutes = [
  GetPage(name: '/', page: () => const MyHomePage()),
  GetPage(name: '/about', page: () => const MyAboutPage())
];
