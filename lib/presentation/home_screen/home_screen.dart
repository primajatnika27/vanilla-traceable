import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';
import 'package:vanilla_traceability/presentation/home_screen/widgets/selling_item_grid_widget.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_title.dart';
import 'package:vanilla_traceability/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vanilla_traceability/widgets/app_bar/custom_app_bar.dart';
import 'package:vanilla_traceability/widgets/custom_elevated_button.dart';
import 'package:vanilla_traceability/widgets/custom_search_view.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildSellSection(context),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  right: 16.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search",
                ),
              ),
              SizedBox(height: 13.v),
              _buildSellingItem(context),
              SizedBox(height: 20.v),
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
        text: "Welcome",
        margin: EdgeInsets.only(left: 17.h),
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
  Widget _buildSellSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 1.v,
            ),
            child: Text(
              "Vanilla Farmer",
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          CustomElevatedButton(
            height: 28.v,
            width: 75.h,
            text: "Sell",
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.addOrderScreen);
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSellingItem(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 160.v,
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return SellingItemGridWidget();
        },
      ),
    );
  }
}
