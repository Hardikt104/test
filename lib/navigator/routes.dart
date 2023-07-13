import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/home_page.dart';

class Routes {
  static const String indicator = '/indicator';

  static const String home = '/home';

  static List<GetPage> get pages {
    List<GetPage> list = [];
    list.add(_buildRoute(name: home, page: const HomePage()));
    return list;
  }

  static GetPage _buildRoute(
      {required String name, required Widget page, Bindings? binding}) {
    return GetPage(name: name, page: () => page, binding: binding);
  }
}
