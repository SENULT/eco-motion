import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/widgets/custom_icon_button.dart';
import 'package:full_app/widgets/custom_search_view.dart';
import 'controller/transtwo_controller.dart';
import 'package:full_app/presentation/transfive_bottomsheet/transfive_bottomsheet.dart';
import 'package:full_app/presentation/transfive_bottomsheet/controller/transfive_controller.dart';

class TranstwoScreen extends GetWidget<TranstwoController> {
  const TranstwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup328),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: 374.h,
                    child: SingleChildScrollView(
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 52.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildComputer(),
                                  SizedBox(height: 8.v),
                                  _buildRecently(),
                                  SizedBox(height: 143.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCar,
                                      height: 26.adaptSize,
                                      width: 26.adaptSize,
                                      margin: EdgeInsets.only(left: 167.h)),
                                  SizedBox(height: 90.v),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 65.h, right: 283.h),
                                      padding: EdgeInsets.all(7.h),
                                      decoration: AppDecoration
                                          .outlineLightGreenA
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder15),
                                      child: Container(
                                          height: 12.adaptSize,
                                          width: 12.adaptSize,
                                          decoration: BoxDecoration(
                                              color: appTheme.gray50,
                                              borderRadius:
                                                  BorderRadius.circular(6.h)))),
                                  SizedBox(height: 95.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCar,
                                      height: 26.adaptSize,
                                      width: 26.adaptSize,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 136.h)),
                                  SizedBox(height: 13.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCar,
                                      height: 26.adaptSize,
                                      width: 26.adaptSize,
                                      margin: EdgeInsets.only(left: 20.h)),
                                  SizedBox(height: 153.v),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgTransportation1,
                                      height: 20.v,
                                      width: 18.h,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 133.h))
                                ])))))));
  }

  /// Section Widget
  Widget _buildComputer() {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 50.v,
            width: 320.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgComputer,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(right: 42.h)),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomSearchView(
                      width: 319.h,
                      controller: controller.searchController,
                      hintText: "lbl".tr,
                      alignment: Alignment.bottomCenter)),
              CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  alignment: Alignment.bottomRight,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgMicrophone))
            ])));
  }

  /// Section Widget
  Widget _buildRecently() {
    return SizedBox(
        height: 125.v,
        width: 374.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.whiteA700.withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder31),
                  child: Container(
                      height: 125.v,
                      width: 374.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.h, vertical: 17.v),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder31),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("lbl_recently".tr,
                                    style: CustomTextStyles
                                        .bodySmallCustomBlack900))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTimmer1();
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: 31.v,
                                              width: 26.h,
                                              margin:
                                                  EdgeInsets.only(top: 27.v),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 6.h,
                                                  vertical: 7.v),
                                              decoration: AppDecoration
                                                  .fillGray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder15),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgClock,
                                                  height: 16.v,
                                                  width: 13.h,
                                                  alignment: Alignment.center)),
                                          Expanded(
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 21.h, bottom: 8.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_mar_venus_restaurant"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumCustomBlack900),
                                                        SizedBox(height: 22.v),
                                                        Text(
                                                            "msg_88_nguyen_duc_canh"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallCustomBlack900)
                                                      ])))
                                        ]))))
                      ])))),
          CustomImageView(
              imagePath: ImageConstant.imgComputer,
              height: 26.adaptSize,
              width: 26.adaptSize,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 59.h))
        ]));
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [TransfiveBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [TransfiveController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapTimmer1() {
    Get.bottomSheet(
      TransfiveBottomsheet(
        Get.put(
          TransfiveController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
