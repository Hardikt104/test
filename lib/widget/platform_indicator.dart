import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/base_utils.dart';

class PlatformIndicator extends StatelessWidget {
  const PlatformIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: 16.0.toAll,
        decoration: BoxDecoration(
          color: BaseColors.white,
          borderRadius: 6.0.toAllBorderRadius,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Platform.isIOS
                ? const CupertinoActivityIndicator()
                : const CircularProgressIndicator(),
            16.0.toVSB,
            RichText(
              text: const TextSpan(
                text: 'Please wait...',
                style: TextStyle(
                  fontSize: 14.0,
                  color: BaseColors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
