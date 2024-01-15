import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage1,
                height: 186.adaptSize,
                width: 186.adaptSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
