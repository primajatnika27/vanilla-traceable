import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';
import 'package:vanilla_traceability/widgets/custom_icon_button.dart';

class ContactItemWidget extends StatelessWidget {
  const ContactItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 12.v,
      ),
      child: Row(
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
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Farm Person",
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 16.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  "+62 858 750 743 51",
                  style: TextStyle(
                    color: appTheme.blueGray40001,
                    fontSize: 12.fSize,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.messagingScreen);
            },
            icon: Icon(Icons.mark_chat_unread_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone_forwarded),
          ),
        ],
      ),
    );
  }
}
