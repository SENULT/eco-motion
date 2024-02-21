import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:full_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:full_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:full_app/widgets/app_bar/custom_app_bar.dart';
import 'package:full_app/widgets/custom_drop_down.dart';
import 'package:full_app/widgets/custom_icon_button.dart';
import 'controller/details_controller.dart';
import 'models/aqcard1_item_model.dart';
import 'models/healthdatacardapp_item_model.dart';
import 'models/pagetitle_item_model.dart';
import 'models/weathercard_item_model.dart';
import 'widgets/aqcard1_item_widget.dart';
import 'widgets/healthdatacardapp_item_widget.dart';
import 'widgets/pagetitle_item_widget.dart';
import 'widgets/weathercard_item_widget.dart';

// ignore_for_file: must_be_immutable
class DetailsScreen extends GetWidget<DetailsController> {
  const DetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildLocationTitle(),
                  SizedBox(height: 28.v),
                  _buildTitle(),
                  SizedBox(height: 19.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 99.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 64.h,
                      vertical: 3.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgAirQualityInfo,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 32.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "lbl_3".tr,
                              style: CustomTextStyles.headlineSmall_1,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 2.h,
                                top: 6.v,
                                bottom: 5.v,
                              ),
                              child: Text(
                                "lbl_aqi".tr,
                                style: CustomTextStyles.bodySmallRobotoLight,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUser,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                            Text(
                              "lbl_low".tr,
                              style:
                                  CustomTextStyles.titleSmallRobotoGreenA70001,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 48.h),
                      child: Row(
                        children: [
                          Container(
                            decoration: AppDecoration.fillGreenA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 30.v),
                                Container(
                                  height: 20.v,
                                  width: 8.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.greenA70001,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              bottom: 3.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_o3_ug_m3".tr,
                                  style: CustomTextStyles.bodySmall10,
                                ),
                                Text(
                                  "lbl_52".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25.h),
                            decoration: AppDecoration.fillGreenA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 30.v),
                                Container(
                                  height: 20.v,
                                  width: 8.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.greenA70001,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              bottom: 3.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_pm10_ug_m3".tr,
                                  style: CustomTextStyles.bodySmall10,
                                ),
                                Text(
                                  "lbl_25".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15.h),
                            decoration: AppDecoration.fillGreenA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 30.v),
                                Container(
                                  height: 20.v,
                                  width: 8.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.greenA70001,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              bottom: 3.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_no_ug_m3".tr,
                                  style: CustomTextStyles.bodySmall10,
                                ),
                                Text(
                                  "lbl_22".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 48.h,
                      right: 53.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: AppDecoration.fillGreenA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 30.v),
                              Container(
                                height: 20.v,
                                width: 8.h,
                                decoration: BoxDecoration(
                                  color: appTheme.greenA70001,
                                  borderRadius: BorderRadius.circular(
                                    4.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            bottom: 3.v,
                          ),
                          child: _buildData(
                            pageTitle: "lbl_no2_ug_m3".tr,
                            pageTitle1: "lbl_12".tr,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.h),
                          decoration: AppDecoration.fillGreenA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 30.v),
                              Container(
                                height: 20.v,
                                width: 8.h,
                                decoration: BoxDecoration(
                                  color: appTheme.greenA70001,
                                  borderRadius: BorderRadius.circular(
                                    4.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            bottom: 3.v,
                          ),
                          child: _buildData(
                            pageTitle: "lbl_pm1_ug_m3".tr,
                            pageTitle1: "lbl_16".tr,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.h),
                          decoration: AppDecoration.fillGreenA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 30.v),
                              Container(
                                height: 20.v,
                                width: 8.h,
                                decoration: BoxDecoration(
                                  color: appTheme.greenA70001,
                                  borderRadius: BorderRadius.circular(
                                    4.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            bottom: 3.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_pm2_5_ug_m3".tr,
                                style: CustomTextStyles.bodySmall10,
                              ),
                              Text(
                                "lbl_2_22".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
                  _buildAqCard1(),
                  SizedBox(height: 10.v),
                  SizedBox(
                    height: 6.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 4,
                      effect: ScrollingDotsEffect(
                        spacing: 4,
                        activeDotColor: theme.colorScheme.primary,
                        dotColor: appTheme.blueGray100,
                        dotHeight: 6.v,
                        dotWidth: 6.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 44.v),
                  _buildPageTitle(),
                  SizedBox(height: 27.v),
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
                  _buildAqForcast(),
                  SizedBox(height: 16.v),
                  _buildAqHistory(),
                  SizedBox(height: 16.v),
                  _buildWeatherForcast(),
                  SizedBox(height: 16.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_recommendations".tr,
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildHealthDataCardApp(),
                  SizedBox(height: 10.v),
                  Obx(
                    () => SizedBox(
                      height: 6.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex1.value,
                        count: controller.detailsModelObj.value
                            .healthdatacardappItemList.value.length,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 64.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconArrowLeft,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 24.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_current_location".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgSettings,
          margin: EdgeInsets.fromLTRB(24.h, 16.v, 24.h, 8.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLocationTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
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
            "msg_church_street_square".tr,
            style: CustomTextStyles.bodyLarge_1,
          ),
          Text(
            "lbl_birmingham".tr,
            style: CustomTextStyles.bodySmall12,
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(17.h, 16.v, 16.h, 16.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdown,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "lbl_15_12_2020".tr,
                    items: controller
                        .detailsModelObj.value.dropdownItemList!.value,
                    onChanged: (value) {
                      controller.onSelected(value);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdown,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "lbl_16_00".tr,
                    items: controller
                        .detailsModelObj.value.dropdownItemList1!.value,
                    onChanged: (value) {
                      controller.onSelected1(value);
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_air_quality".tr,
            style: CustomTextStyles.titleLarge_1,
          ),
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgVideoCameraPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAqCard1() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 72.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 32.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 6.h,
              );
            },
            itemCount:
                controller.detailsModelObj.value.aqcard1ItemList.value.length,
            itemBuilder: (context, index) {
              Aqcard1ItemModel model =
                  controller.detailsModelObj.value.aqcard1ItemList.value[index];
              return Aqcard1ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPageTitle() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 214.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Obx(
              () => CarouselSlider.builder(
                options: CarouselOptions(
                  height: 214.v,
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
                    .detailsModelObj.value.pagetitleItemList.value.length,
                itemBuilder: (context, index, realIndex) {
                  PagetitleItemModel model = controller
                      .detailsModelObj.value.pagetitleItemList.value[index];
                  return PagetitleItemWidget(
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
                    count: controller
                        .detailsModelObj.value.pagetitleItemList.value.length,
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
            ),
          ],
        ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildMapPinAqData(
                                mapsMarkerPin: ImageConstant.imgMapsMarkerPin,
                                zero: "lbl_4".tr,
                              ),
                              SizedBox(height: 16.v),
                              Padding(
                                padding: EdgeInsets.only(right: 2.h),
                                child: _buildMapPinAqData(
                                  mapsMarkerPin: ImageConstant
                                      .imgMapsMarkerPinLightGreenA700,
                                  zero: "lbl_3".tr,
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: _buildMapPinAqData(
                                  mapsMarkerPin:
                                      ImageConstant.imgMapsMarkerPinGreenA70001,
                                  zero: "lbl_2".tr,
                                ),
                              ),
                              SizedBox(height: 26.v),
                              _buildMapPinAqData(
                                mapsMarkerPin:
                                    ImageConstant.imgMapsMarkerPinGreenA400,
                                zero: "lbl_1".tr,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 9.v),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 45.v,
                                    width: 41.h,
                                    margin: EdgeInsets.only(bottom: 2.v),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        _buildMapPinAqData(
                                          mapsMarkerPin: ImageConstant
                                              .imgMapsMarkerPinOnerror,
                                          zero: "lbl_6".tr,
                                        ),
                                        _buildMapPinAqData(
                                          mapsMarkerPin: ImageConstant
                                              .imgMapsMarkerPinOrange300,
                                          zero: "lbl_5".tr,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 20.h,
                                      top: 10.v,
                                      bottom: 13.v,
                                    ),
                                    child: _buildMapPinAqData(
                                      mapsMarkerPin: ImageConstant
                                          .imgMapsMarkerPinDeepOrangeA200,
                                      zero: "lbl_7".tr,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16.h,
                                      top: 23.v,
                                    ),
                                    child: _buildMapPinAqData(
                                      mapsMarkerPin:
                                          ImageConstant.imgMapsMarkerPinRedA700,
                                      zero: "lbl_8".tr,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 13.v),
                              SizedBox(
                                width: 164.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 12.v),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 19.h),
                                            child: _buildMapPinAqData(
                                              mapsMarkerPin: ImageConstant
                                                  .imgMapsMarkerPinLightGreenA700,
                                              zero: "lbl_3".tr,
                                            ),
                                          ),
                                          SizedBox(height: 9.v),
                                          SizedBox(
                                            width: 71.h,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10.v),
                                                  child: _buildMapPinAqData(
                                                    mapsMarkerPin: ImageConstant
                                                        .imgMapsMarkerPinGreenA70001,
                                                    zero: "lbl_2".tr,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10.v),
                                                  child: _buildMapPinAqData(
                                                    mapsMarkerPin: ImageConstant
                                                        .imgMapsMarkerPinGreenA400,
                                                    zero: "lbl_1".tr,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 22.v),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildMapPinAqData(
                                            mapsMarkerPin: ImageConstant
                                                .imgMapsMarkerPinLightGreenA700,
                                            zero: "lbl_3".tr,
                                          ),
                                          SizedBox(height: 6.v),
                                          Container(
                                            width: 78.h,
                                            margin: EdgeInsets.only(left: 4.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 3.v),
                                                  child: _buildMapPinAqData(
                                                    mapsMarkerPin: ImageConstant
                                                        .imgMapsMarkerPinGreenA400,
                                                    zero: "lbl_1".tr,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 3.v),
                                                  child: _buildMapPinAqData(
                                                    mapsMarkerPin: ImageConstant
                                                        .imgMapsMarkerPinGreenA70001,
                                                    zero: "lbl_2".tr,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 6.v),
                                      child: _buildMapPinAqData(
                                        mapsMarkerPin: ImageConstant
                                            .imgMapsMarkerPinOrange300,
                                        zero: "lbl_4".tr,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.h,
                                        top: 6.v,
                                      ),
                                      child: _buildMapPinAqData(
                                        mapsMarkerPin: ImageConstant
                                            .imgMapsMarkerPinLightGreenA700,
                                        zero: "lbl_3".tr,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Padding(
                                padding: EdgeInsets.only(left: 37.h),
                                child: _buildMapPinAqData(
                                  mapsMarkerPin:
                                      ImageConstant.imgMapsMarkerPinGray700,
                                  zero: "lbl_n_a".tr,
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Container(
                                width: 94.h,
                                margin: EdgeInsets.only(right: 16.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 9.v),
                                      child: _buildMapPinAqData(
                                        mapsMarkerPin: ImageConstant
                                            .imgMapsMarkerPinLightGreenA700,
                                        zero: "lbl_3".tr,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 9.v),
                                      child: _buildMapPinAqData(
                                        mapsMarkerPin: ImageConstant
                                            .imgMapsMarkerPinGreenA400,
                                        zero: "lbl_1".tr,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7.v),
                              _buildMapPinAqData(
                                mapsMarkerPin:
                                    ImageConstant.imgMapsMarkerPinGreenA70001,
                                zero: "lbl_2".tr,
                              ),
                            ],
                          ),
                        ),
                      ],
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

  /// Section Widget
  Widget _buildAqForcast() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_aq_forcast".tr,
                      style: CustomTextStyles.titleLarge_1,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "lbl_next_7_days".tr,
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15.v,
                    bottom: 12.v,
                  ),
                  child: CustomDropDown(
                    width: 61.h,
                    icon: Container(
                      margin: EdgeInsets.only(left: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdownPrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "lbl_aqi".tr,
                    items: controller
                        .detailsModelObj.value.dropdownItemList2!.value,
                    contentPadding: EdgeInsets.symmetric(vertical: 1.v),
                    onChanged: (value) {
                      controller.onSelected2(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Container(
                  height: 1.v,
                  width: 280.h,
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.08),
                  ),
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  height: 95.v,
                  width: 280.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(top: 11.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(top: 39.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(bottom: 27.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgChart,
                        height: 80.v,
                        width: 280.h,
                        alignment: Alignment.bottomCenter,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          right: 5.h,
                          bottom: 5.v,
                        ),
                        child: _buildData1(
                          data: "lbl_2".tr,
                          data1: "lbl_5".tr,
                          data2: "lbl_7".tr,
                          data3: "lbl_4".tr,
                          data4: "lbl_3".tr,
                          data5: "lbl_8".tr,
                          data6: "lbl_2".tr,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1.v,
                  width: 280.h,
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.08),
                  ),
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildWeek(
                    mon: "lbl_sat".tr,
                    sun: "lbl_sun".tr,
                    mon1: "lbl_mon".tr,
                    sun1: "lbl_tue".tr,
                    mon2: "lbl_wed".tr,
                    sun2: "lbl_thu".tr,
                    mon3: "lbl_fri".tr,
                  ),
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
  Widget _buildAqHistory() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_aq_history".tr,
                      style: CustomTextStyles.titleLarge_1,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "lbl_last_7_days".tr,
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15.v,
                    bottom: 12.v,
                  ),
                  child: CustomDropDown(
                    width: 87.h,
                    icon: Container(
                      margin: EdgeInsets.only(left: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdownPrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "lbl_weekly".tr,
                    items: controller
                        .detailsModelObj.value.dropdownItemList3!.value,
                    onChanged: (value) {
                      controller.onSelected3(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Container(
                  height: 1.v,
                  width: 280.h,
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.08),
                  ),
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  height: 95.v,
                  width: 280.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(top: 11.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(top: 39.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(bottom: 27.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgChart,
                        height: 80.v,
                        width: 280.h,
                        alignment: Alignment.bottomCenter,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          right: 5.h,
                          bottom: 5.v,
                        ),
                        child: _buildData1(
                          data: "lbl_2".tr,
                          data1: "lbl_5".tr,
                          data2: "lbl_7".tr,
                          data3: "lbl_4".tr,
                          data4: "lbl_3".tr,
                          data5: "lbl_8".tr,
                          data6: "lbl_2".tr,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1.v,
                  width: 280.h,
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.08),
                  ),
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildWeek(
                    mon: "lbl_sat".tr,
                    sun: "lbl_sun".tr,
                    mon1: "lbl_mon".tr,
                    sun1: "lbl_tue".tr,
                    mon2: "lbl_wed".tr,
                    sun2: "lbl_thu".tr,
                    mon3: "lbl_fri".tr,
                  ),
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
  Widget _buildWeatherForcast() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_weather_forcast".tr,
            style: CustomTextStyles.titleLarge_1,
          ),
          SizedBox(height: 4.v),
          Text(
            "lbl_next_7_days".tr,
            style: CustomTextStyles.bodySmall10,
          ),
          SizedBox(height: 15.v),
          Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 4.v,
                );
              },
              itemCount: controller
                  .detailsModelObj.value.weathercardItemList.value.length,
              itemBuilder: (context, index) {
                WeathercardItemModel model = controller
                    .detailsModelObj.value.weathercardItemList.value[index];
                return WeathercardItemWidget(
                  model,
                );
              },
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHealthDataCardApp() {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 86.v,
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
          itemCount: controller
              .detailsModelObj.value.healthdatacardappItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            HealthdatacardappItemModel model = controller
                .detailsModelObj.value.healthdatacardappItemList.value[index];
            return HealthdatacardappItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildData({
    required String pageTitle,
    required String pageTitle1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          pageTitle,
          style: CustomTextStyles.bodySmall10.copyWith(
            color: appTheme.black900.withOpacity(0.72),
          ),
        ),
        Text(
          pageTitle1,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.black900.withOpacity(0.96),
          ),
        ),
      ],
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

  /// Common widget
  Widget _buildData1({
    required String data,
    required String data1,
    required String data2,
    required String data3,
    required String data4,
    required String data5,
    required String data6,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 60.v,
            right: 5.h,
          ),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillGreenA70001.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Column(
              children: [
                SizedBox(height: 6.v),
                Text(
                  data,
                  style: CustomTextStyles.bodySmallWhiteA70010.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 30.v,
          ),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillOrange.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Column(
              children: [
                SizedBox(height: 5.v),
                Text(
                  data1,
                  style: CustomTextStyles.bodySmallWhiteA70010.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5.h, 12.v, 5.h, 48.v),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillDeepOrangeA.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Column(
              children: [
                SizedBox(height: 6.v),
                Text(
                  data2,
                  style: CustomTextStyles.bodySmallWhiteA70010.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5.h, 40.v, 5.h, 20.v),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillYellow.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Column(
              children: [
                SizedBox(height: 6.v),
                Text(
                  data3,
                  style: CustomTextStyles.bodySmallWhiteA70010.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5.h, 50.v, 5.h, 10.v),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillGreenA70001.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Column(
              children: [
                SizedBox(height: 6.v),
                Text(
                  data4,
                  style: CustomTextStyles.bodySmallWhiteA70010.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 5.h,
            right: 5.h,
            bottom: 60.v,
          ),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillOrange.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Column(
              children: [
                SizedBox(height: 6.v),
                Text(
                  data5,
                  style: CustomTextStyles.bodySmallWhiteA70010.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 5.h,
            top: 60.v,
          ),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillGreenA70001.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Column(
              children: [
                SizedBox(height: 6.v),
                Text(
                  data6,
                  style: CustomTextStyles.bodySmallWhiteA70010.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWeek({
    required String mon,
    required String sun,
    required String mon1,
    required String sun1,
    required String mon2,
    required String sun2,
    required String mon3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          mon,
          style: CustomTextStyles.bodySmallBlack90010_2.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          sun,
          style: CustomTextStyles.bodySmallBlack90010_2.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          mon1,
          style: CustomTextStyles.bodySmallBlack90010_2.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          sun1,
          style: CustomTextStyles.bodySmallBlack90010_2.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          mon2,
          style: CustomTextStyles.bodySmallBlack90010_2.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          sun2,
          style: CustomTextStyles.bodySmallBlack90010_2.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          mon3,
          style: CustomTextStyles.bodySmallBlack90010_2.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
      ],
    );
  }
}
