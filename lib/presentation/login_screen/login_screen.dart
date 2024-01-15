import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:vanilla_traceability/widgets/app_bar/custom_app_bar.dart';
import 'package:vanilla_traceability/widgets/custom_elevated_button.dart';
import 'package:vanilla_traceability/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: SizedBox(
        width: SizeUtils.width,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 17.v, horizontal: 20.h),
              child: Column(
                children: [
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 278.h,
                      child: Text(
                        "Hello! Login to get started",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimary,
                          fontSize: 31.fSize,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 58.v),
                  CustomTextFormField(
                    controller: usernameController,
                    hintText: "Username",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 15.v),
                  CustomTextFormField(
                    controller: phoneNumberController,
                    hintText: "Phone Number",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.phone,
                  ),
                  SizedBox(height: 49.v),
                  CustomElevatedButton(
                    text: "Login",
                    buttonTextStyle: TextStyle(
                      fontSize: 18.fSize,
                      color: appTheme.white,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.bottomNavigationScreen);
                    },
                  ),
                  SizedBox(height: 20.v),
                  _buildLoginWith(context),
                  SizedBox(height: 20.v),
                  _buildFacebookIc(context),
                  SizedBox(height: 150.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an account? ",
                          style: CustomTextStyles.bodyMediumff1e232c,
                        ),
                        TextSpan(
                          text: "Register Now",
                          style: CustomTextStyles.titleSmallBahnschriftffffc100,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.fromLTRB(0.h, 10.v, 325.h, 6.v),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginWith(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7.v, bottom: 9.v),
            child: SizedBox(
              width: 117.h,
              child: Divider(color: appTheme.indigo50),
            ),
          ),
          Text("Or Login with",
              style: TextStyle(
                  color: appTheme.gray600,
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.w600)),
          Padding(
            padding: EdgeInsets.only(top: 7.v, bottom: 9.v),
            child: SizedBox(
              width: 116.h,
              child: Divider(color: appTheme.indigo50),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebookIc(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 58.v,
            width: 110.h,
            padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 14.v),
            decoration: AppDecoration.outlineIndigo
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: CustomImageView(
              imagePath: ImageConstant.imgFacebookIc,
              height: 27.adaptSize,
              width: 27.adaptSize,
              alignment: Alignment.centerLeft,
              color: Colors.blue,
            ),
          ),
          Container(
            height: 58.v,
            width: 110.h,
            padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 14.v),
            decoration: AppDecoration.outlineIndigo
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: CustomImageView(
              imagePath: ImageConstant.imgGoogleIc,
              height: 27.adaptSize,
              width: 27.adaptSize,
              alignment: Alignment.centerLeft,
            ),
          ),
          Container(
            height: 58.v,
            width: 110.h,
            padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 14.v),
            decoration: AppDecoration.outlineIndigo
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: CustomImageView(
              imagePath: ImageConstant.imgCibApple,
              height: 27.adaptSize,
              width: 27.adaptSize,
              alignment: Alignment.centerLeft,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
