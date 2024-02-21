import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:full_app/core/app_export.dart';
import 'controller/dashboard_seven_controller.dart';
import 'models/aqhistory_item_model.dart';
import 'widgets/aqhistory_item_widget.dart';

class DashboardSevenScreen extends GetWidget<DashboardSevenController> {
  const DashboardSevenScreen({Key? key}) : super(key: key);

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
                              margin: EdgeInsets.only(bottom: 104.v),
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: Column(children: [
                                _buildEighteen(),
                                _buildAqForcast(),
                                SizedBox(height: 18.v),
                                _buildAqHistory(),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Obx(() => Container(
                                        height: 6.v,
                                        margin: EdgeInsets.only(left: 134.h),
                                        child: AnimatedSmoothIndicator(
                                            activeIndex:
                                                controller.sliderIndex.value,
                                            count: controller
                                                .dashboardSevenModelObj
                                                .value
                                                .aqhistoryItemList
                                                .value
                                                .length,
                                            axisDirection: Axis.horizontal,
                                            effect: ScrollingDotsEffect(
                                                spacing: 2,
                                                activeDotColor:
                                                    theme.colorScheme.primary,
                                                dotColor: appTheme.blueGray100,
                                                dotHeight: 6.v,
                                                dotWidth: 6.h)))))
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildEighteen() {
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
  Widget _buildAqForcast() {
    return GestureDetector(
        onTap: () {
          onTapAqForcast();
        },
        child: Container(
            margin: EdgeInsets.only(left: 17.h, right: 13.h),
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, right: 22.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_aq_forcast".tr,
                                  style: CustomTextStyles.titleLarge_1),
                              SizedBox(height: 2.v),
                              Text("lbl_next_7_days".tr,
                                  style: CustomTextStyles.bodySmall10)
                            ]),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(top: 18.v, bottom: 13.v),
                            child: Text("lbl_aqi".tr,
                                style:
                                    CustomTextStyles.titleMediumOutfitPrimary)),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowdownPrimary,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                                left: 8.h, top: 15.v, bottom: 12.v))
                      ])),
              SizedBox(height: 15.v),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  decoration: AppDecoration.fillWhiteA
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 16.v),
                    Container(
                        height: 1.v,
                        width: 280.h,
                        decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08))),
                    SizedBox(height: 16.v),
                    SizedBox(
                        height: 95.v,
                        width: 280.h,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 1.v,
                                  width: 280.h,
                                  margin: EdgeInsets.only(top: 11.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.black900
                                          .withOpacity(0.08)))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 1.v,
                                  width: 280.h,
                                  margin: EdgeInsets.only(top: 39.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.black900
                                          .withOpacity(0.08)))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 1.v,
                                  width: 280.h,
                                  margin: EdgeInsets.only(bottom: 27.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.black900
                                          .withOpacity(0.08)))),
                          CustomImageView(
                              imagePath: ImageConstant.imgChart,
                              height: 80.v,
                              width: 280.h,
                              alignment: Alignment.bottomCenter),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.h, right: 5.h, bottom: 5.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 60.v, right: 5.h),
                                            child:
                                                _buildChart(data: "lbl_2".tr)),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.h,
                                                vertical: 30.v),
                                            child:
                                                _buildChart(data: "lbl_5".tr)),
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                5.h, 12.v, 5.h, 48.v),
                                            child:
                                                _buildChart(data: "lbl_7".tr)),
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                5.h, 40.v, 5.h, 20.v),
                                            child:
                                                _buildChart(data: "lbl_4".tr)),
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                5.h, 50.v, 5.h, 10.v),
                                            child:
                                                _buildChart(data: "lbl_3".tr)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h,
                                                right: 5.h,
                                                bottom: 60.v),
                                            child:
                                                _buildChart(data: "lbl_8".tr)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h, top: 60.v),
                                            child:
                                                _buildChart(data: "lbl_2".tr))
                                      ])))
                        ])),
                    Container(
                        height: 1.v,
                        width: 280.h,
                        decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08))),
                    SizedBox(height: 3.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_sat".tr,
                                  style:
                                      CustomTextStyles.bodySmallBlack90010_2),
                              Text("lbl_sun".tr,
                                  style:
                                      CustomTextStyles.bodySmallBlack90010_2),
                              Text("lbl_mon".tr,
                                  style:
                                      CustomTextStyles.bodySmallBlack90010_2),
                              Text("lbl_tue".tr,
                                  style:
                                      CustomTextStyles.bodySmallBlack90010_2),
                              Text("lbl_wed".tr,
                                  style:
                                      CustomTextStyles.bodySmallBlack90010_2),
                              Text("lbl_thu".tr,
                                  style:
                                      CustomTextStyles.bodySmallBlack90010_2),
                              Text("lbl_fri".tr,
                                  style: CustomTextStyles.bodySmallBlack90010_2)
                            ]))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildAqHistory() {
    return Padding(
        padding: EdgeInsets.only(left: 17.h, right: 13.h),
        child: Obx(() => CarouselSlider.builder(
            options: CarouselOptions(
                height: 231.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  controller.sliderIndex.value = index;
                }),
            itemCount: controller
                .dashboardSevenModelObj.value.aqhistoryItemList.value.length,
            itemBuilder: (context, index, realIndex) {
              AqhistoryItemModel model = controller
                  .dashboardSevenModelObj.value.aqhistoryItemList.value[index];
              return AqhistoryItemWidget(model, onTapAqHistory: () {
                onTapAqHistory();
              });
            })));
  }

  /// Common widget
  Widget _buildChart({required String data}) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                padding: EdgeInsets.all(1.h),
                decoration: AppDecoration.fillOrange
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.h, vertical: 2.v),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.circleBorder15),
                    child: Column(children: [
                      SizedBox(height: 5.v),
                      Text(data,
                          style: CustomTextStyles.bodySmallWhiteA70010
                              .copyWith(color: appTheme.whiteA700))
                    ])))));
  }

  /// Navigates to the dashboardEightScreen when the action is triggered.
  onTapAqHistory() {
    Get.toNamed(AppRoutes.dashboardEightScreen);
  }

  /// Navigates to the dashboardEightScreen when the action is triggered.
  onTapAqForcast() {
    Get.toNamed(
      AppRoutes.dashboardEightScreen,
    );
  }
}
