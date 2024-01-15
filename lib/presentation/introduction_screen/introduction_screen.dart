import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 38.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28.v),
              CustomImageView(
                imagePath: ImageConstant.imgBlogPostBro1,
                height: 423.v,
                width: 390.h,
              ),
              SizedBox(height: 48.v),
              Padding(
                padding: EdgeInsets.only(left: 39.h),
                child: Text(
                  "Lorem Ipsum ",
                  style: TextStyle(
                    color: appTheme.blueGray90001,
                    fontSize: 24.fSize,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                height: 57.v,
                width: 184.h,
                margin: EdgeInsets.only(left: 39.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 7.v,
                        width: 102.h,
                        margin: EdgeInsets.only(bottom: 1.v),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 184.h,
                        child: Text(
                          "is simply dummy text",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: appTheme.blueGray90001,
                            fontSize: 24.26.fSize,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 110.adaptSize,
                  width: 110.adaptSize,
                  margin: EdgeInsets.only(right: 16.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 90.adaptSize,
                          width: 90.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.white,
                            borderRadius: BorderRadius.circular(
                              55.h,
                            ),
                            border: Border.all(color: appTheme.amber200),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(AppRoutes.loginScreen);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(40.v),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup646,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
