import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import '../controller/dashboard_five_controller.dart';
import '../models/aqcard2_item_model.dart';

// ignore: must_be_immutable
class Aqcard2ItemWidget extends StatelessWidget {
  Aqcard2ItemWidget(
    this.aqcard2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Aqcard2ItemModel aqcard2ItemModelObj;

  var controller = Get.find<DashboardFiveController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 3.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 16.adaptSize,
              child: Obx(
                () => Text(
                  aqcard2ItemModelObj.pageTitle!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ),
            SizedBox(height: 4.v),
            Obx(
              () => CustomImageView(
                imagePath: aqcard2ItemModelObj.user!.value,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            SizedBox(height: 2.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    aqcard2ItemModelObj.weatherData1!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 4.v,
                  ),
                  child: Obx(
                    () => Text(
                      aqcard2ItemModelObj.weatherData2!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
