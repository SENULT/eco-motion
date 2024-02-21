import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_four_page/dashboard_four_page.dart';
import 'package:full_app/presentation/dashboard_two_page/dashboard_two_page.dart';
import 'package:full_app/widgets/custom_bottom_bar.dart';
import 'package:full_app/widgets/custom_icon_button.dart';
import 'controller/dashboard_six_controller.dart';

class DashboardSixScreen extends GetWidget<DashboardSixController> {
  const DashboardSixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 17.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildTwenty(),
                                    SizedBox(height: 49.v),
                                    _buildTitle(),
                                    SizedBox(height: 19.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgSmoking1,
                                        height: 193.v,
                                        width: 300.h,
                                        margin: EdgeInsets.only(left: 13.h),
                                        onTap: () {
                                          onTapImgSmokingOne();
                                        }),
                                    SizedBox(height: 47.v),
                                    Align(
                                        alignment: Alignment.center,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapTxtPageTitle();
                                            },
                                            child: Container(
                                                width: 315.h,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 10.h),
                                                child: Text(
                                                    "msg_you_smoked_0_1_cigarette"
                                                        .tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: theme.textTheme
                                                        .headlineLarge)))),
                                    SizedBox(height: 5.v),
                                    Container(
                                        height: 6.v,
                                        margin: EdgeInsets.only(left: 129.h),
                                        child: AnimatedSmoothIndicator(
                                            activeIndex: 0,
                                            count: 4,
                                            effect: ScrollingDotsEffect(
                                                spacing: 2.5,
                                                activeDotColor:
                                                    theme.colorScheme.primary,
                                                dotColor: appTheme.blueGray100,
                                                dotHeight: 6.v,
                                                dotWidth: 6.h)))
                                  ]))))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildTwenty() {
    return SizedBox(
        height: 301.v,
        width: 337.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage5,
              height: 301.v,
              width: 337.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 301.v,
                  width: 337.h,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage5,
                        height: 301.v,
                        width: 337.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage5,
                        height: 301.v,
                        width: 337.h,
                        alignment: Alignment.center)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildTitle() {
    return Align(
        alignment: Alignment.center,
        child: GestureDetector(
            onTap: () {
              onTapTitle();
            },
            child: Padding(
                padding: EdgeInsets.only(left: 19.h, right: 7.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("lbl_simplize".tr,
                          style: CustomTextStyles.titleLarge_1),
                      Padding(
                          padding: EdgeInsets.only(top: 7.v),
                          child: CustomIconButton(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVideoCameraPrimary)))
                    ]))));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardFourPage;
      case BottomBarEnum.Map:
        return AppRoutes.dashboardTwoPage;
      case BottomBarEnum.Transport:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardFourPage:
        return DashboardFourPage();
      case AppRoutes.dashboardTwoPage:
        return DashboardTwoPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the dashboardSevenScreen when the action is triggered.
  onTapTitle() {
    Get.toNamed(
      AppRoutes.dashboardSevenScreen,
    );
  }

  /// Navigates to the dashboardSevenScreen when the action is triggered.
  onTapImgSmokingOne() {
    Get.toNamed(
      AppRoutes.dashboardSevenScreen,
    );
  }

  /// Navigates to the dashboardSevenScreen when the action is triggered.
  onTapTxtPageTitle() {
    Get.toNamed(
      AppRoutes.dashboardSevenScreen,
    );
  }
}
