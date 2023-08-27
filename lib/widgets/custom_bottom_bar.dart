import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';

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
      icon: ImageConstant.imgImage11,
      activeIcon: ImageConstant.imgImage11,
      type: BottomBarEnum.Image11,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLocationOnprimarycontainer,
      activeIcon: ImageConstant.imgLocationOnprimarycontainer,
      type: BottomBarEnum.Locationonprimarycontainer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgImage9,
      activeIcon: ImageConstant.imgImage9,
      type: BottomBarEnum.Image9,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFavoriteOnprimarycontainer,
      activeIcon: ImageConstant.imgFavoriteOnprimarycontainer,
      type: BottomBarEnum.Favoriteonprimarycontainer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      activeIcon: ImageConstant.imgUser,
      type: BottomBarEnum.User,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(61),
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray100,
            width: getHorizontalSize(1),
          ),
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
            icon: CustomImageView(
              svgPath: bottomMenuList[index].isPng == true
                  ? null
                  : bottomMenuList[index].icon,
              imagePath: bottomMenuList[index].isPng == true
                  ? bottomMenuList[index].icon
                  : null,
              height: getVerticalSize(23),
              width: getHorizontalSize(17),
              color: theme.colorScheme.onPrimaryContainer,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].isPng == true
                  ? null
                  : bottomMenuList[index].activeIcon,
              imagePath: bottomMenuList[index].isPng == true
                  ? bottomMenuList[index].activeIcon
                  : null,
              height: getSize(22),
              width: getSize(22),
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
  Image11,
  Locationonprimarycontainer,
  Image9,
  Favoriteonprimarycontainer,
  User,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isPng = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isPng;
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
