import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_four_page/dashboard_four_page.dart';
import 'package:full_app/presentation/dashboard_two_page/dashboard_two_page.dart';
import 'package:full_app/widgets/custom_bottom_bar.dart';
import 'controller/dashboard_five_controller.dart';
import 'models/aqcard2_item_model.dart';
import 'widgets/aqcard2_item_widget.dart';

class DashboardFiveScreen extends GetWidget<DashboardFiveController> {
  const DashboardFiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 3.v),
                child: Column(children: [
                  SizedBox(height: 14.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Column(children: [
                                _buildThirtySix(),
                                SizedBox(height: 15.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapAqCurrentStateCard();
                                    },
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 36.v),
                                        decoration: AppDecoration.fillWhiteA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              _buildTitle(),
                                              SizedBox(height: 19.v),
                                              Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 83.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 64.h,
                                                      vertical: 3.v),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgAirQualityInfo),
                                                          fit: BoxFit.cover)),
                                                  child: Column(children: [
                                                    SizedBox(height: 32.v),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text("lbl_3".tr,
                                                              style: CustomTextStyles
                                                                  .headlineSmall_1),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 2.h,
                                                                      top: 6.v,
                                                                      bottom:
                                                                          5.v),
                                                              child: Text(
                                                                  "lbl_aqi".tr,
                                                                  style: CustomTextStyles
                                                                      .bodySmallRobotoLight))
                                                        ]),
                                                    SizedBox(height: 7.v),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgUser,
                                                              height:
                                                                  16.adaptSize,
                                                              width:
                                                                  16.adaptSize),
                                                          Text("lbl_low".tr,
                                                              style: CustomTextStyles
                                                                  .titleSmallRobotoGreenA70001)
                                                        ])
                                                  ])),
                                              SizedBox(height: 24.v),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 32.h,
                                                          right: 48.h),
                                                      child: Row(children: [
                                                        Container(
                                                            decoration: AppDecoration
                                                                .fillGreenA
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder4),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          30.v),
                                                                  Container(
                                                                      height:
                                                                          20.v,
                                                                      width:
                                                                          8.h,
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .greenA70001,
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.h)))
                                                                ])),
                                                        Expanded(
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 16
                                                                            .h),
                                                                child: Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              top: 1.v,
                                                                              bottom: 3.v),
                                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                            Text("lbl_o3_ug_m3".tr,
                                                                                style: CustomTextStyles.bodySmall10),
                                                                            Text("lbl_52".tr,
                                                                                style: theme.textTheme.titleLarge)
                                                                          ])),
                                                                      Container(
                                                                          margin: EdgeInsets.only(
                                                                              left: 25
                                                                                  .h),
                                                                          decoration: AppDecoration.fillGreenA.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder4),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                SizedBox(height: 30.v),
                                                                                Container(height: 20.v, width: 8.h, decoration: BoxDecoration(color: appTheme.greenA70001, borderRadius: BorderRadius.circular(4.h)))
                                                                              ])),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 16.h,
                                                                              top: 1.v,
                                                                              bottom: 3.v),
                                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                            Text("lbl_pm10_ug_m3".tr,
                                                                                style: CustomTextStyles.bodySmall10),
                                                                            Text("lbl_25".tr,
                                                                                style: theme.textTheme.titleLarge)
                                                                          ])),
                                                                      Container(
                                                                          margin: EdgeInsets.only(
                                                                              left: 15
                                                                                  .h),
                                                                          decoration: AppDecoration.fillGreenA.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder4),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                SizedBox(height: 30.v),
                                                                                Container(height: 20.v, width: 8.h, decoration: BoxDecoration(color: appTheme.greenA70001, borderRadius: BorderRadius.circular(4.h)))
                                                                              ])),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 16.h,
                                                                              top: 1.v,
                                                                              bottom: 3.v),
                                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                            Text("lbl_no_ug_m3".tr,
                                                                                style: CustomTextStyles.bodySmall10),
                                                                            Text("lbl_22".tr,
                                                                                style: theme.textTheme.titleLarge)
                                                                          ]))
                                                                    ])))
                                                      ]))),
                                              SizedBox(height: 16.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 32.h, right: 37.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            decoration: AppDecoration
                                                                .fillGreenA
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder4),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          30.v),
                                                                  Container(
                                                                      height:
                                                                          20.v,
                                                                      width:
                                                                          8.h,
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .greenA70001,
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.h)))
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 16.h,
                                                                    bottom:
                                                                        3.v),
                                                            child: _buildData(
                                                                pageTitle:
                                                                    "lbl_no2_ug_m3"
                                                                        .tr,
                                                                pageTitle1:
                                                                    "lbl_12"
                                                                        .tr)),
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 20.h),
                                                            decoration: AppDecoration
                                                                .fillGreenA
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder4),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          30.v),
                                                                  Container(
                                                                      height:
                                                                          20.v,
                                                                      width:
                                                                          8.h,
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .greenA70001,
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.h)))
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 16.h,
                                                                    bottom:
                                                                        3.v),
                                                            child: _buildData(
                                                                pageTitle:
                                                                    "lbl_pm1_ug_m3"
                                                                        .tr,
                                                                pageTitle1:
                                                                    "lbl_16"
                                                                        .tr)),
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 20.h),
                                                            decoration: AppDecoration
                                                                .fillGreenA
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder4),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          30.v),
                                                                  Container(
                                                                      height:
                                                                          20.v,
                                                                      width:
                                                                          8.h,
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .greenA70001,
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.h)))
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 16.h,
                                                                    bottom:
                                                                        3.v),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_pm2_5_ug_m3"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmall10),
                                                                  Text(
                                                                      "lbl_2_22"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleLarge)
                                                                ]))
                                                      ])),
                                              SizedBox(height: 10.v),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16.h),
                                                      child: Text(
                                                          "lbl_forcast".tr,
                                                          style: CustomTextStyles
                                                              .bodySmall12_1))),
                                              SizedBox(height: 7.v),
                                              _buildAqCard1(),
                                              SizedBox(height: 10.v),
                                              Obx(() => SizedBox(
                                                  height: 6.v,
                                                  child: AnimatedSmoothIndicator(
                                                      activeIndex: controller
                                                          .sliderIndex.value,
                                                      count: controller
                                                          .dashboardFiveModelObj
                                                          .value
                                                          .aqcard2ItemList
                                                          .value
                                                          .length,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      effect: ScrollingDotsEffect(
                                                          spacing: 4,
                                                          activeDotColor: theme
                                                              .colorScheme
                                                              .primary,
                                                          dotColor: appTheme
                                                              .blueGray100,
                                                          dotHeight: 6.v,
                                                          dotWidth: 6.h)))),
                                              SizedBox(height: 5.v)
                                            ])))
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildThirtySix() {
    return SizedBox(
        height: 301.v,
        width: 337.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage1,
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
                        imagePath: ImageConstant.imgImage1,
                        height: 301.v,
                        width: 337.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 301.v,
                        width: 337.h,
                        alignment: Alignment.center)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildTitle() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_air_quality".tr, style: CustomTextStyles.titleLarge_1),
          CustomImageView(
              imagePath: ImageConstant.imgVideocamera,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 7.v))
        ]));
  }

  /// Section Widget
  Widget _buildAqCard1() {
    return Obx(() => CarouselSlider.builder(
        options: CarouselOptions(
            height: 72.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              controller.sliderIndex.value = index;
            }),
        itemCount:
            controller.dashboardFiveModelObj.value.aqcard2ItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          Aqcard2ItemModel model = controller
              .dashboardFiveModelObj.value.aqcard2ItemList.value[index];
          return Aqcard2ItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildData({
    required String pageTitle,
    required String pageTitle1,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(pageTitle,
          style: CustomTextStyles.bodySmall10
              .copyWith(color: appTheme.black900.withOpacity(0.72))),
      Text(pageTitle1,
          style: theme.textTheme.titleLarge!
              .copyWith(color: appTheme.black900.withOpacity(0.96)))
    ]);
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

  /// Navigates to the dashboardSixScreen when the action is triggered.
  onTapAqCurrentStateCard() {
    Get.toNamed(
      AppRoutes.dashboardSixScreen,
    );
  }
}
