import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';
import 'package:vanilla_traceability/presentation/profile_screen/widgets/balance_component_widget.dart';
import 'package:vanilla_traceability/presentation/profile_screen/widgets/payment_component_widget.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_title.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vanilla_traceability/widgets/app_bar/custom_app_bar.dart';
import 'package:vanilla_traceability/widgets/custom_icon_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 5.v,
                bottom: 11.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Prima Jatnika",
                    style: CustomTextStyles.titleLargePoppinsBlack900,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "Vanilla Framer",
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BalanceComponentWidget(),
                PaymentComponentWidget(),
              ],
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: _buildSettingsColumn(context),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60.v,
      title: AppbarTitle(
        text: "Profile",
        margin: EdgeInsets.only(left: 17.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDots2,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 12.v),
          onTap: () {},
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSettingsColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                child: Icon(
                  Icons.account_circle_outlined,
                  color: appTheme.blueGray90001,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Account ",
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "Make changes to your account",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 56,
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                child: Icon(
                  Icons.lock,
                  color: appTheme.blueGray90001,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password ",
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "Manage your device security",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 56,
              ),
            ],
          ),
          SizedBox(height: 20.v),
          InkWell(
            enableFeedback: false,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.loginScreen);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: appTheme.red500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Logout ",
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: appTheme.red500,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Further secure your account to safety",
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: appTheme.red500
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 56,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
