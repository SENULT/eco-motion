import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'controller/transseven_controller.dart';
import 'package:full_app/presentation/transfive_bottomsheet/transfive_bottomsheet.dart';
import 'package:full_app/presentation/transfive_bottomsheet/controller/transfive_controller.dart';

// ignore_for_file: must_be_immutable
class TranssevenBottomsheet extends StatelessWidget {
  TranssevenBottomsheet(this.controller, {Key? key}) : super(key: key);

  TranssevenController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: _buildSearch());
  }

  /// Section Widget
  Widget _buildSearch() {
    return Container(
        margin: EdgeInsets.only(left: 32.h, right: 23.h, bottom: 1451.v),
        decoration: AppDecoration.fillGray50
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
        child: Row(children: [
          GestureDetector(
              onTap: () {
                onTapBack();
              },
              child: Container(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.h, vertical: 11.v),
                  decoration: AppDecoration.fillGray100
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVector2,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      alignment: Alignment.centerRight))),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 16.v, bottom: 10.v),
              child: Text("msg_mar_venus_restaurant4".tr,
                  style: CustomTextStyles.bodyMediumCustomBlack900))
        ]));
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [TransfiveBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [TransfiveController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapBack() {
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
