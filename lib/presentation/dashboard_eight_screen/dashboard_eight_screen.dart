import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_four_page/dashboard_four_page.dart';
import 'package:full_app/presentation/dashboard_two_page/dashboard_two_page.dart';
import 'package:full_app/widgets/custom_bottom_bar.dart';
import 'controller/dashboard_eight_controller.dart';
import 'models/weathercard1_item_model.dart';
import 'widgets/weathercard1_item_widget.dart';

class DashboardEightScreen extends GetWidget<DashboardEightController> {
  const DashboardEightScreen({Key? key}) : super(key: key);

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
                              padding: EdgeInsets.symmetric(horizontal: 12.h),
                              child: Column(children: [
                                _buildThirtyFour(),
                                SizedBox(height: 25.v),
                                _buildWeatherForcast(),
                                SizedBox(height: 26.v),
                                SizedBox(
                                    height: 6.v,
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: 0,
                                        count: 4,
                                        effect: ScrollingDotsEffect(
                                            spacing: 2,
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
  Widget _buildThirtyFour() {
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
  Widget _buildWeatherForcast() {
    return GestureDetector(
        onTap: () {
          onTapWeatherForcast();
        },
        child: Container(
            margin: EdgeInsets.only(right: 8.h),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lbl_weather_forcast".tr,
                      style: CustomTextStyles.titleLarge_1),
                  SizedBox(height: 4.v),
                  Text("lbl_next_7_days".tr,
                      style: CustomTextStyles.bodySmall10),
                  SizedBox(height: 15.v),
                  Obx(() => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 4.v);
                      },
                      itemCount: controller.dashboardEightModelObj.value
                          .weathercard1ItemList.value.length,
                      itemBuilder: (context, index) {
                        Weathercard1ItemModel model = controller
                            .dashboardEightModelObj
                            .value
                            .weathercard1ItemList
                            .value[index];
                        return Weathercard1ItemWidget(model);
                      })),
                  SizedBox(height: 5.v)
                ])));
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

  /// Navigates to the dashboardFiveScreen when the action is triggered.
  onTapWeatherForcast() {
    Get.toNamed(
      AppRoutes.dashboardFiveScreen,
    );
  }
}
