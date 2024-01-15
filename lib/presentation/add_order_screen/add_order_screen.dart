import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_title.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vanilla_traceability/widgets/app_bar/custom_app_bar.dart';
import 'package:vanilla_traceability/widgets/custom_drop_down.dart';
import 'package:vanilla_traceability/widgets/custom_elevated_button.dart';
import 'package:vanilla_traceability/widgets/custom_icon_button.dart';
import 'package:vanilla_traceability/widgets/custom_switch.dart';
import 'package:vanilla_traceability/widgets/custom_text_form_field.dart';

class AddOrderScreen extends StatefulWidget {
  AddOrderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<AddOrderScreen> createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends State<AddOrderScreen> {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController feedCompanyValueController = TextEditingController();

  TextEditingController weightController = TextEditingController();

  TextEditingController bagQuantityController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController totalValueController = TextEditingController();

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: Container(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.v),
            child: Column(
              children: [
                _buildOrderNo(context),
                SizedBox(height: 15.v),
                _buildDate(context),
                SizedBox(height: 15.v),
                _buildMenuThirtySix(context),
                SizedBox(height: 15.v),
                _buildFeedCompanyValue(context),
                SizedBox(height: 14.v),
                _buildWeight(context),
                SizedBox(height: 11.v),
                _buildBagQuantity(context),
                SizedBox(height: 14.v),
                _buildPrice(context),
                SizedBox(height: 15.v),
                _buildTotalvalue(context),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Payment Method",
                    style: TextStyle(
                      color: appTheme.blueGray40001,
                      fontSize: 15.fSize,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 93.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 3.v,
                                bottom: 1.v,
                              ),
                              child: Text(
                                "Cash",
                                style: TextStyle(
                                  color: appTheme.blueGray40001,
                                  fontSize: 15.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            CustomSwitch(
                              value: isSelectedSwitch,
                              onChange: (value) {
                                setState(() {
                                  isSelectedSwitch = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 11.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "Online",
                          style: TextStyle(
                            color: appTheme.black900,
                            fontSize: 15.fSize,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Fill all the details",
                      style: TextStyle(
                        color: appTheme.red500,
                        fontSize: 12.fSize,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildPlaceOrder(context),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60.v,
      centerTitle: true,
      leadingWidth: 50,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: AppbarTitle(
        text: "Add Order",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDots2,
          margin: EdgeInsets.fromLTRB(15.h, 2.v, 15.h, 7.v),
          onTap: () {},
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOrderNo(BuildContext context) {
    return CustomElevatedButton(
      height: 25.v,
      width: 93.h,
      text: "Order No.: 124",
      margin: EdgeInsets.only(right: 4.h),
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "Date",
              style: TextStyle(
                color: appTheme.blueGray40001,
                fontSize: 15.fSize,
                fontFamily: 'Bahnschrift',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCalendar,
            height: 18.v,
            width: 16.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuThirtySix(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 22.v, 16.h, 21.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgMenu136,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            hintText: "Feed Type",
            items: dropdownItemList,
            onChanged: (value) {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18.h),
          child: CustomIconButton(
            height: 59.adaptSize,
            width: 59.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL10,
            child: CustomImageView(
              imagePath: ImageConstant.imgMaterialSymbolsAdd,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFeedCompanyValue(BuildContext context) {
    return CustomTextFormField(
      controller: feedCompanyValueController,
      hintText: "Feed Company",
    );
  }

  /// Section Widget
  Widget _buildWeight(BuildContext context) {
    return CustomTextFormField(
      controller: weightController,
      hintText: "50kg",
    );
  }

  /// Section Widget
  Widget _buildBagQuantity(BuildContext context) {
    return CustomTextFormField(
      controller: bagQuantityController,
      hintText: "Bag Quantity",
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return CustomTextFormField(
      controller: priceController,
      hintText: "Bag Price",
    );
  }

  /// Section Widget
  Widget _buildTotalvalue(BuildContext context) {
    return CustomTextFormField(
      controller: totalValueController,
      hintText: "Total",
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildPlaceOrder(BuildContext context) {
    return CustomElevatedButton(
      text: "Place Order",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 29.v,
      ),
    );
  }
}
