import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../navigator/routes.dart';
import '../../widget/platform_indicator.dart';
import 'base_colors.dart';

showIndicator() async {
  await Get.generalDialog(
    pageBuilder: (context, animation, secondaryAnimation) {
      return WillPopScope(
        onWillPop: () async => false,
        child: const PlatformIndicator(),
      );
    },
    routeSettings: const RouteSettings(name: Routes.indicator),
    barrierColor: BaseColors.black.withOpacity(0.25),
    barrierDismissible: false,
  );
}

hideIndicator() {
  if (Get.isDialogOpen ?? false) {
    Get.back();
  }
}
