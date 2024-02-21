import 'dart:async';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:full_app/widgets/app_bar/custom_app_bar.dart';
import 'package:full_app/widgets/custom_text_form_field.dart';
import 'controller/dashboard_four_controller.dart';
import 'models/dashboard_four_model.dart';
import 'models/forcastdatacard_item_model.dart';
import 'models/locationdatacard_item_model.dart';
import 'widgets/forcastdatacard_item_widget.dart';
import 'widgets/locationdatacard_item_widget.dart';

class DashboardFourPage extends StatelessWidget {
  DashboardFourPage({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  DashboardFourController controller =
      Get.put(DashboardFourController(DashboardFourModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 23.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 36.h),
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
                ),
                SizedBox(height: 9.v),
                _buildLiveData(),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: Text(
                      "lbl_forcast".tr,
                      style: CustomTextStyles.bodySmall12_1,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                _buildForcastDataCard(),
                SizedBox(height: 10.v),
                Obx(
                  () => SizedBox(
                    height: 6.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: controller.sliderIndex.value,
                      count: controller.dashboardFourModelObj.value
                          .forcastdatacardItemList.value.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 4,
                        activeDotColor: theme.colorScheme.primary,
                        dotColor: appTheme.blueGray100,
                        dotHeight: 6.v,
                        dotWidth: 6.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 34.v),
                _buildAddPlace(),
                SizedBox(height: 16.v),
                _buildLocationDataCard(),
                SizedBox(height: 10.v),
                Obx(
                  () => SizedBox(
                    height: 6.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: controller.sliderIndex1.value,
                      count: controller.dashboardFourModelObj.value
                          .locationdatacardItemList.value.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 4,
                        activeDotColor: theme.colorScheme.primary,
                        dotColor: appTheme.blueGray100,
                        dotHeight: 6.v,
                        dotWidth: 6.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_show_on_map".tr,
                      style: CustomTextStyles.bodySmallRoboto10,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                _buildMap(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.h),
                  child: CustomTextFormField(
                    controller: controller.threeController,
                    hintText: "msg_air_quality_index5".tr,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 15.v,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVideocamera,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 54.v,
                    ),
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 12.h, 15.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTrailingIconPrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 54.v,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 13.v),
                    borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    fillColor: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 44.v,
      title: AppbarSubtitleOne(
        text: "lbl_welcome_back".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildLiveData() {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 36.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWeatherIconsIndigoA200,
            height: 32.adaptSize,
            width: 32.adaptSize,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Spacer(),
          Text(
            "lbl_3".tr,
            style: theme.textTheme.headlineSmall,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 11.v,
              bottom: 9.v,
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
              top: 5.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildForcastDataCard() {
    return Padding(
      padding: EdgeInsets.only(left: 32.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 142.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              controller.sliderIndex.value = index;
            },
          ),
          itemCount: controller
              .dashboardFourModelObj.value.forcastdatacardItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            ForcastdatacardItemModel model = controller.dashboardFourModelObj
                .value.forcastdatacardItemList.value[index];
            return ForcastdatacardItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddPlace() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_work".tr,
                  style: CustomTextStyles.bodySmallBlack90010,
                ),
                SizedBox(
                  width: 78.h,
                  child: Text(
                    "msg_coventry_st_birmingham".tr,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgAqStatusGreenA700,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              margin: EdgeInsets.only(
                                top: 10.v,
                                bottom: 2.v,
                              ),
                            ),
                            Text(
                              "lbl_3".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 8.v,
                                bottom: 4.v,
                              ),
                              child: Text(
                                "lbl_aqi".tr.toUpperCase(),
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgWeatherIconsIndigoA200,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          top: 7.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "lbl_25".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 6.v,
                          bottom: 6.v,
                        ),
                        child: Text(
                          "lbl_c".tr.toUpperCase(),
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.v),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16.h),
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_home".tr,
                  style: CustomTextStyles.bodySmallBlack90010,
                ),
                SizedBox(
                  width: 78.h,
                  child: Text(
                    "msg_coventry_st_birmingham".tr,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgAqStatusGreenA700,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          top: 10.v,
                          bottom: 3.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "lbl_2".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 8.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "lbl_aqi".tr.toUpperCase(),
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgWeatherIcons24x24,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          top: 7.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "lbl_22".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 6.v,
                          bottom: 6.v,
                        ),
                        child: Text(
                          "lbl_c".tr.toUpperCase(),
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationDataCard() {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 88.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              controller.sliderIndex1.value = index;
            },
          ),
          itemCount: controller.dashboardFourModelObj.value
              .locationdatacardItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            LocationdatacardItemModel model = controller.dashboardFourModelObj
                .value.locationdatacardItemList.value[index];
            return LocationdatacardItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMap() {
    return SizedBox(
      height: 160.v,
      width: 343.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
