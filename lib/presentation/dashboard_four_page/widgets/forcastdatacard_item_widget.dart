import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import '../controller/dashboard_four_controller.dart';
import '../models/forcastdatacard_item_model.dart';

// ignore: must_be_immutable
class ForcastdatacardItemWidget extends StatelessWidget {
  ForcastdatacardItemWidget(
    this.forcastdatacardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ForcastdatacardItemModel forcastdatacardItemModelObj;

  var controller = Get.find<DashboardFourController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(left: 312.h),
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                forcastdatacardItemModelObj.time!.value,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 12.v),
            CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
            SizedBox(height: 4.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    forcastdatacardItemModelObj.weatherText1!.value,
                    textAlign: TextAlign.right,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.v),
                  child: Obx(
                    () => Text(
                      forcastdatacardItemModelObj.weatherText2!.value,
                      textAlign: TextAlign.right,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.v),
            Container(
              height: 1.v,
              width: 32.h,
              decoration: BoxDecoration(
                color: appTheme.black900.withOpacity(0.08),
              ),
            ),
            SizedBox(height: 7.v),
            Obx(
              () => CustomImageView(
                imagePath: forcastdatacardItemModelObj.weatherIcons!.value,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      forcastdatacardItemModelObj.temperatureText1!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 2.v,
                      bottom: 7.v,
                    ),
                    child: Obx(
                      () => Text(
                        forcastdatacardItemModelObj.temperatureText2!.value,
                        textAlign: TextAlign.right,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
