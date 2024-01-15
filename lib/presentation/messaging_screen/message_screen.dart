import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_title.dart';
import 'package:vanilla_traceability/widgets/app_bar/custom_app_bar.dart';
import 'package:vanilla_traceability/widgets/custom_icon_button.dart';
import 'package:vanilla_traceability/widgets/custom_text_form_field.dart';

class MessagingScreen extends StatefulWidget {
  const MessagingScreen({super.key});

  @override
  State<MessagingScreen> createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.only(left: 110.h, right: 24.h),
              child: _buildHiThereIMInterestedFrameFortyTwo(
                context,
                hiThereIMInterested:
                    "Hi saya ingin order vanila beans, apakah stok tersedia?",
                time: "02:58 PM",
              ),
            ),
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.only(left: 24.h, right: 110.h),
              child: _buildHiThereIMInterestedFrameFortyTwo(
                context,
                hiThereIMInterested: "Baik, kami cek terlebih dahulu stocknya",
                time: "04:00 PM",
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomTextFormField(
        hintText: "Type your message...",
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 20.v),
          child: Icon(Icons.send),
        ),
        suffixConstraints: BoxConstraints(maxHeight: 64.v),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60,
      leadingWidth: 60.h,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomIconButton(
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: IconButtonStyleHelper.fillPrimaryTL25,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup225,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          margin: EdgeInsets.only(left: 33.h, top: 33.v),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.h),
                            border: Border.all(
                              color: appTheme.white,
                              width: 2.h,
                              strokeAlign: strokeAlignOutside,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.h, top: 5.v, bottom: 1.v),
                  child: Column(
                    children: [
                      AppbarTitle(text: "Farm Person"),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildHiThereIMInterestedFrameFortyTwo(
    BuildContext context, {
    required String hiThereIMInterested,
    required String time,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 241.h,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          decoration: AppDecoration.fillIndigo
              .copyWith(borderRadius: BorderRadiusStyle.customBorderTL7),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 11.v),
              Container(
                width: 180.h,
                margin: EdgeInsets.only(right: 12.h),
                child: Text(
                  hiThereIMInterested,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.black900,
                    height: 2.00,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
            ],
          ),
        ),
        SizedBox(height: 12.v),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            time,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        )
      ],
    );
  }
}
