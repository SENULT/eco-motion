import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AQI Notification One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aqiNotificationOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AQI Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aqiNotificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AQI_Scale".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aqiScaleScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Dashboard_Four - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dashboardFourContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Dashboard_Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dashboardFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Dashboard_Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dashboardSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Dashboard_Seven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dashboardSevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Dashboard_Eight".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dashboardEightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TransOne".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.transoneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TransTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.transtwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TransThree".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.transthreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TransFour".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.transfourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TransEight".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.transeightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Map_One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mapOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Map_Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mapTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Map_Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mapThreeScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
