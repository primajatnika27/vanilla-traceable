import 'package:vanilla_traceability/presentation/contact_screen/widgets/contact_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_title.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vanilla_traceability/widgets/app_bar/custom_app_bar.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ContactScreenState createState() => ContactScreenState();
}

class ContactScreenState extends State<ContactScreen>
    with AutomaticKeepAliveClientMixin<ContactScreen> {

  @override
  bool get wantKeepAlive => true;
  @override

  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: 391.h,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              _buildTotalBatchesFive(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60.v,
      title: AppbarTitle(
        text: "Contact",
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
  Widget _buildTotalBatchesFive(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: Text(
            "Total Connection: 5 ",
            style: TextStyle(
              color: appTheme.blueGray40001,
              fontSize: 17.fSize,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 15.v),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 5.5.v),
              child: SizedBox(
                width: 391.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray300,
                ),
              ),
            );
          },
          itemCount: 5,
          itemBuilder: (context, index) {
            return ContactItemWidget();
          },
        ),
      ],
    );
  }
}
