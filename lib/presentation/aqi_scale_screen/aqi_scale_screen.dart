import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_four_page/dashboard_four_page.dart';
import 'package:full_app/presentation/dashboard_two_page/dashboard_two_page.dart';
import 'package:full_app/widgets/custom_bottom_bar.dart';
import 'controller/aqi_scale_controller.dart';

// ignore_for_file: must_be_immutable
class AqiScaleScreen extends GetWidget<AqiScaleController> {
  const AqiScaleScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 789.v,
                    width: 343.h,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildCurrentStateCard(),
                              SizedBox(height: 8.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 24.h,
                                  vertical: 10.v,
                                ),
                                decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildAQIData(
                                      user: ImageConstant.imgUserLightGreenA700,
                                      low: "lbl_low".tr,
                                      airQualityIndex:
                                          "msg_air_quality_index".tr,
                                      description: "msg_air_quality_can".tr,
                                      pageTitle: "lbl_show_more".tr,
                                    ),
                                    SizedBox(height: 19.v),
                                    _buildAQIData(
                                      user: ImageConstant.imgUserOnerror,
                                      low: "lbl_moderate".tr,
                                      airQualityIndex:
                                          "msg_air_quality_index2".tr,
                                      description: "msg_air_quality_can2".tr,
                                      pageTitle: "lbl_show_more".tr,
                                    ),
                                    SizedBox(height: 20.v),
                                    _buildAQIData(
                                      user: ImageConstant.imgAqStatus,
                                      low: "lbl_high".tr,
                                      airQualityIndex:
                                          "msg_air_quality_index3".tr,
                                      description: "msg_air_quality_can2".tr,
                                      pageTitle: "lbl_show_more".tr,
                                    ),
                                    SizedBox(height: 20.v),
                                    _buildAQIData(
                                      user: ImageConstant.imgLock,
                                      low: "lbl_very_high".tr,
                                      airQualityIndex:
                                          "msg_air_quality_index4".tr,
                                      description: "msg_air_quality_can2".tr,
                                      pageTitle: "lbl_show_more".tr,
                                    ),
                                    SizedBox(height: 14.v),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgIconArrowLeft,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(top: 8.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 95.h),
                                  child: Text(
                                    "lbl_aqi_scale".tr,
                                    style: CustomTextStyles.titleLargeOnPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildCurrentStateCard() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGps,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 7.v,
                    bottom: 5.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_church_street_square".tr,
                        style: CustomTextStyles.bodyMedium_1,
                      ),
                      Text(
                        "lbl_birmingham".tr,
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgWeatherIconsIndigoA200,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      margin: EdgeInsets.only(top: 1.v),
                    ),
                    Container(
                      height: 32.v,
                      width: 111.h,
                      margin: EdgeInsets.only(left: 6.h),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_19".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5.v),
                                  child: Text(
                                    "lbl_c".tr.toUpperCase(),
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgTemparatureHigh,
                                  height: 6.v,
                                  width: 4.h,
                                  margin: EdgeInsets.only(
                                    left: 2.h,
                                    top: 7.v,
                                    bottom: 5.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 110.h,
                              margin: EdgeInsets.only(
                                left: 1.h,
                                top: 15.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_rain_shower".tr,
                                    style: CustomTextStyles.bodySmallBlack90010,
                                  ),
                                  Text(
                                    "lbl_feels_like_11_c".tr,
                                    style: CustomTextStyles.bodySmall10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_3".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 10.v,
                        bottom: 8.v,
                      ),
                      child: Text(
                        "lbl_aqi".tr,
                        style: CustomTextStyles.bodySmallRobotoLight,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUserLightGreenA700,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 12.h,
                        top: 4.v,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildAQIData({
    required String user,
    required String low,
    required String airQualityIndex,
    required String description,
    required String pageTitle,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: user,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 13.v,
            bottom: 97.v,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  low,
                  style: CustomTextStyles.bodyLargeOnPrimary.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                  ),
                ),
                SizedBox(height: 3.v),
                Text(
                  airQualityIndex,
                  style: CustomTextStyles.bodySmallGray900.copyWith(
                    color: appTheme.gray900.withOpacity(0.72),
                  ),
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 250.h,
                  child: Text(
                    description,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      color: appTheme.black900.withOpacity(0.72),
                      height: 1.40,
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  pageTitle,
                  style: CustomTextStyles.bodySmallPrimary.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
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
}
