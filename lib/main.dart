import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'navigator/routes.dart';
import 'network/base_network.dart';
import 'utils/base_utils.dart';

final appNavigator = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init(BaseStrings.appName);

  Get.lazyPut<ApiNet>(() => ApiNet());

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        getPages: Routes.pages,
        title: BaseStrings.appName,
        navigatorKey: appNavigator,
        theme: BaseStyles.appTheme,
        defaultTransition: Transition.cupertino,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.home,
      ),
    );
  }
}
