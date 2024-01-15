import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vanilla_traceability/widgets/app_bar/custom_app_bar.dart';
import 'package:vanilla_traceability/widgets/custom_drop_down.dart';
import 'package:vanilla_traceability/widgets/custom_elevated_button.dart';
import 'package:vanilla_traceability/widgets/custom_floating_button.dart';

class MyOrdersScreen extends StatelessWidget {
  MyOrdersScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SizedBox(
        width: SizeUtils.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 131.v),
            child: Column(
              children: [
                _buildInventory(context),
                SizedBox(height: 31.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: CustomDropDown(
                            width: 200.h,
                            hintText: "Select Date",
                            items: dropdownItemList,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(10.h, 9.v, 12.h, 9.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCalendar,
                                height: 12.v,
                                width: 11.h,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 30.v,
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 7.v,
                              right: 30.h,
                              bottom: 7.v,
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 22.v),
                _buildFeedOrderValue1(context),
                SizedBox(height: 20.v),
                _buildShipping(context),
                SizedBox(height: 11.v),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
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
  Widget _buildInventory(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            height: 40.v,
            width: 171.h,
            text: "Order",
            buttonStyle: CustomButtonStyles.fillBlueGray,
          ),
          CustomElevatedButton(
            height: 40.v,
            width: 171.h,
            text: "Shipping",
            margin: EdgeInsets.only(left: 16.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL10,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedOrderValue1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray70033.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: _buildOrderBagsQuantity(
              context,
              orderBagsQuantityText: "Feed Order Value",
              zeroText: "-10,56,180",
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: _buildOrderBagsQuantity(
              context,
              orderBagsQuantityText: "Order Bags Quantity",
              zeroText: "0",
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildShipping(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.detailsMyOrdersScreen);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order No :",
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 18.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.v),
                Text(
                  "Feed Type",
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 15.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Quantity",
                  style: TextStyle(
                    color: appTheme.blueGray40001,
                    fontSize: 12.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  "23rd December 2022",
                  style: TextStyle(
                    color: appTheme.blueGray40001,
                    fontSize: 12.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "#9R9G87R",
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 18.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "3,000",
                    style: TextStyle(
                      color: appTheme.black900,
                      fontSize: 18.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                Text(
                  "Order Status: Not Received",
                  style: TextStyle(
                    color: appTheme.blueGray40001,
                    fontSize: 12.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildOrderBagsQuantity(
    BuildContext context, {
    required String orderBagsQuantityText,
    required String zeroText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            orderBagsQuantityText,
            style: TextStyle(
              color: appTheme.black900,
              fontSize: 12.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Text(
          zeroText,
          style: TextStyle(
            color: appTheme.green600,
            fontSize: 12.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
