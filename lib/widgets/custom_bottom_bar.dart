import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgThumbsUp,
      activeIcon: ImageConstant.imgThumbsUp,
      title: "Buy/Sell",
      type: BottomBarEnum.Buysell,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      activeIcon: ImageConstant.imgUser,
      title: "Batches",
      type: BottomBarEnum.Batches,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup164,
      activeIcon: ImageConstant.imgGroup164,
      title: "Feed\nManagement",
      type: BottomBarEnum.Feedmanagement,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup153,
      activeIcon: ImageConstant.imgGroup153,
      title: "Farm\nSettings",
      type: BottomBarEnum.Farmsettings,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 42.v,
                  width: 44.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 42.v,
                          width: 44.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                            borderRadius: BorderRadius.circular(
                              22.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        color: appTheme.black900,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.fromLTRB(11.h, 9.v, 12.h, 12.v),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: TextStyle(
                      color: appTheme.black900,
                      fontSize: 10.fSize,
                      fontFamily: 'Bahnschrift',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 42.v,
                  width: 44.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 42.v,
                          width: 44.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              22.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: bottomMenuList[index].activeIcon,
                        height: 21.v,
                        width: 24.h,
                        color: appTheme.black900,
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(10.h, 10.v, 9.h, 10.v),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: TextStyle(
                      color: appTheme.black900,
                      fontSize: 10.fSize,
                      fontFamily: 'Bahnschrift',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Buysell,
  Batches,
  Feedmanagement,
  Farmsettings,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
