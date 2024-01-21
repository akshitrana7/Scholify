import 'package:faiz_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            imagePath: ImageConstant.imgAddAHeading1080,
            height: 800.v,
            width: 360.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
