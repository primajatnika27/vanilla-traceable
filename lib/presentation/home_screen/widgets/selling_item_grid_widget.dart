import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';
import 'package:vanilla_traceability/widgets/custom_icon_button.dart';

class SellingItemGridWidget extends StatelessWidget {
  const SellingItemGridWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgPoultryfarm111,
            height: 81.v,
            width: 142.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(7.h),
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Vanili Hijau",
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "QTY: 100",
                      style: TextStyle(
                        color: appTheme.blueGray40001,
                        fontSize: 10.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Bandung",
                      style: TextStyle(
                        color: appTheme.blueGray40001,
                        fontSize: 10.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 85.h,
                    top: 7.v,
                  ),
                  child: CustomIconButton(
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCall1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
