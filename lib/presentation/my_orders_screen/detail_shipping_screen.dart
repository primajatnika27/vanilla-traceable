import 'package:flutter/material.dart';
import 'package:order_tracker/order_tracker.dart';
import 'package:vanilla_traceability/core/app_export.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_title.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vanilla_traceability/widgets/app_bar/custom_app_bar.dart';

class DetailShippingScreen extends StatefulWidget {
  const DetailShippingScreen({super.key});

  @override
  State<DetailShippingScreen> createState() => _DetailShippingScreenState();
}

class _DetailShippingScreenState extends State<DetailShippingScreen> {
  List<TextDto> orderList = [
    TextDto("Your order has been placed", "Fri, 25th Mar '22 - 10:47pm"),
    TextDto("Seller ha processed your order", "Sun, 27th Mar '22 - 10:19am"),
    TextDto("Your item has been picked up by courier partner.",
        "Tue, 29th Mar '22 - 5:00pm"),
  ];

  List<TextDto> shippedList = [
    TextDto("Your order has been shipped", "Tue, 29th Mar '22 - 5:04pm"),
    TextDto("Your item has been received in the nearest hub to you.", null),
  ];

  List<TextDto> outOfDeliveryList = [
    TextDto("Your order is out for delivery", "Thu, 31th Mar '22 - 2:27pm"),
  ];

  List<TextDto> deliveredList = [
    TextDto("Your order has been delivered", "Thu, 31th Mar '22 - 3:58pm"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 43.v),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Text(
                  "Vanilla Tracking",
                  style: CustomTextStyles.titleMedium17,
                ),
              ),
            ),
            SizedBox(height: 23.v),
            _buildTracking(context),
            _buildAddress(context),
            SizedBox(height: 17.v),
            _buildRecipient(context),
            SizedBox(height: 16.v),
            _buildDeliveryTime(context),
            Padding(
              padding: const EdgeInsets.all(20),
              child: OrderTracker(
                status: Status.delivered,
                activeColor: appTheme.green600,
                inActiveColor: Colors.grey[300],
                orderTitleAndDateList: orderList,
                shippedTitleAndDateList: shippedList,
                outOfDeliveryTitleAndDateList: outOfDeliveryList,
                deliveredTitleAndDateList: deliveredList,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      centerTitle: true,
      leadingWidth: 50,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: AppbarTitle(
        text: "Details",
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
  Widget _buildTracking(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(20.h, 16.v, 20.h, 17.v),
      decoration: AppDecoration.outlineGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
            child: Text(
              "Batch Number:",
              style: CustomTextStyles.bodyMedium14,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "#9R9G87R",
              style: CustomTextStyles.titleMediumBluegray900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(20.h, 16.v, 20.h, 17.v),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("From", style: CustomTextStyles.bodyMediumBlack900),
                SizedBox(height: 10.v),
                SizedBox(
                  width: 133.h,
                  child: Text(
                    "Bandung, Jawa Barat",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(height: 1.40),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("To", style: CustomTextStyles.bodyMediumBlack900),
                SizedBox(height: 10.v),
                SizedBox(
                  width: 130.h,
                  child: Text(
                    "5678 Maple Avenue Seattle, WA 98101",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(height: 1.40),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecipient(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "Recipient:",
              style: CustomTextStyles.bodyMediumBlack900,
            ),
          ),
          Text("Jonathan Anderson", style: theme.textTheme.bodyMedium)
        ]));
  }

  /// Section Widget
  Widget _buildDeliveryTime(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.v),
      decoration: AppDecoration.outlineGray300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "Est. Delivery:",
              style: CustomTextStyles.bodyMediumBlack900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "20 Sept 2023",
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
