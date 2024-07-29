// ignore_for_file: must_be_immutable

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:full_app/widgets/app_bar/appbar_title.dart';
import 'package:full_app/widgets/app_bar/custom_app_bar.dart';
import 'package:full_app/widgets/custom_icon_button.dart';
import 'package:full_app/widgets/custom_text_form_field.dart';
import 'controller/dashboard_two_controller.dart';
import 'models/dashboard_two_model.dart';
import 'models/livelocation_item_model.dart';
import 'widgets/livelocation_item_widget.dart';

class DashboardTwoPage extends StatelessWidget {
  DashboardTwoPage({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  DashboardTwoController controller =
      Get.put(DashboardTwoController(DashboardTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 33.v),
            child: Column(
              children: [
                _buildGps(),
                SizedBox(height: 34.v),
                _buildAddPlace(),
                SizedBox(height: 17.v),
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
                        imagePath: ImageConstant.imgTrailingIcon,
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
      height: 89.v,
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "lbl_welcome".tr,
            ),
            AppbarTitle(
              text: "lbl_user".tr,
              margin: EdgeInsets.only(right: 10.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGps() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 276.v,
        width: 360.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Obx(
              () => CarouselSlider.builder(
                options: CarouselOptions(
                  height: 276.v,
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
                itemCount: controller.dashboardTwoModelObj.value
                    .livelocationItemList.value.length,
                itemBuilder: (context, index, realIndex) {
                  LivelocationItemModel model = controller.dashboardTwoModelObj
                      .value.livelocationItemList.value[index];
                  return LivelocationItemWidget(
                    model,
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Obx(
                () => Container(
                  height: 6.v,
                  margin: EdgeInsets.only(left: 130.h),
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.sliderIndex.value,
                    count: controller.dashboardTwoModelObj.value
                        .livelocationItemList.value.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 4,
                      activeDotColor:
                          theme.colorScheme.primary.withOpacity(0.16),
                      dotColor: appTheme.blueGray100,
                      dotHeight: 6.v,
                      dotWidth: 6.h,
                    ),
                  ),
                ),
              ),
            ),
          ],
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
          _buildLocation(
            pageTitle: "lbl_work".tr,
            pageTitle1: "msg_coventry_st_birmingham".tr,
            pageTitle2: "lbl2".tr,
            weather: "lbl_aqi".tr,
            pageTitle3: "lbl2".tr,
            weather1: "lbl_c".tr,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: _buildLocation(
              pageTitle: "lbl_home".tr,
              pageTitle1: "msg_coventry_st_birmingham".tr,
              pageTitle2: "lbl2".tr,
              weather: "lbl_aqi".tr,
              pageTitle3: "lbl2".tr,
              weather1: "lbl_c".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap() {
    return Container(
      height: 160.v,
      width: 343.h,
      decoration: AppDecoration.outlineBlack9001,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMap,
            height: 160.v,
            width: 343.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 160.v,
              width: 343.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMap160x343,
                      height: 160.v,
                      width: 343.h,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 148.v,
                      width: 324.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          _buildMapPinAqData(
                            mapsMarkerPin:
                                ImageConstant.imgMapsMarkerPinGreenA400,
                            zero: "lbl_1".tr,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 146.v,
                              width: 322.h,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 111.h,
                                      bottom: 10.v,
                                    ),
                                    child: _buildMapPinAqData(
                                      mapsMarkerPin: ImageConstant
                                          .imgMapsMarkerPinGreenA70001,
                                      zero: "lbl_2".tr,
                                    ),
                                  ),
                                  _buildMapPinAqData(
                                    mapsMarkerPin: ImageConstant
                                        .imgMapsMarkerPinGreenA70001,
                                    zero: "lbl_2".tr,
                                  ),
                                  Opacity(
                                    opacity: 0.4,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgSubtract,
                                      height: 2.v,
                                      width: 3.h,
                                      alignment: Alignment.bottomLeft,
                                      margin: EdgeInsets.only(
                                        left: 57.h,
                                        bottom: 21.v,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 132.h,
                                      bottom: 7.v,
                                    ),
                                    child: _buildMapPinAqData(
                                      mapsMarkerPin: ImageConstant
                                          .imgMapsMarkerPinGreenA400,
                                      zero: "lbl_1".tr,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 123.v,
                                    width: 306.h,
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
                                      onMapCreated:
                                          (GoogleMapController controller) {
                                        googleMapController
                                            .complete(controller);
                                      },
                                      zoomControlsEnabled: false,
                                      zoomGesturesEnabled: false,
                                      myLocationButtonEnabled: false,
                                      myLocationEnabled: false,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildLocation({
    required String pageTitle,
    required String pageTitle1,
    required String pageTitle2,
    required String weather,
    required String pageTitle3,
    required String weather1,
  }) {
    return Container(
      width: 163.h,
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pageTitle,
                  style: CustomTextStyles.bodySmallBlack90010.copyWith(
                    color: appTheme.black900.withOpacity(0.96),
                  ),
                ),
                SizedBox(
                  width: 78.h,
                  child: Text(
                    pageTitle1,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900.withOpacity(0.72),
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    Text(
                      pageTitle2,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: appTheme.black900.withOpacity(0.96),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 8.v,
                        bottom: 4.v,
                      ),
                      child: Text(
                        weather,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: appTheme.black900.withOpacity(0.72),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        pageTitle3,
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: appTheme.black900.withOpacity(0.96),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 5.v,
                        bottom: 7.v,
                      ),
                      child: Text(
                        weather1,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: appTheme.black900.withOpacity(0.72),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 37.v,
            ),
            child: CustomIconButton(
              height: 20.adaptSize,
              width: 20.adaptSize,
              padding: EdgeInsets.all(1.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconPlus,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMapPinAqData({
    required String mapsMarkerPin,
    required String zero,
  }) {
    return SizedBox(
      height: 24.adaptSize,
      width: 24.adaptSize,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: mapsMarkerPin,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 4.h,
              margin: EdgeInsets.only(top: 2.v),
              child: Text(
                zero,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallWhiteA700_1.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
