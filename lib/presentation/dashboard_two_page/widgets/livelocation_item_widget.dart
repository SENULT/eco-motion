import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import '../controller/dashboard_two_controller.dart';
import '../models/livelocation_item_model.dart';

// ignore: must_be_immutable
class LivelocationItemWidget extends StatelessWidget {
  LivelocationItemWidget(
    this.livelocationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LivelocationItemModel livelocationItemModelObj;

  var controller = Get.find<DashboardTwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 4.h,
          bottom: 195.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: livelocationItemModelObj.gps!.value,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      bottom: 4.v,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Obx(
                          () => Text(
                            livelocationItemModelObj.pageTitle!.value,
                            style: CustomTextStyles.bodyMedium_1,
                          ),
                        ),
                      ),
                      Obx(
                        () => Text(
                          livelocationItemModelObj.pageTitle1!.value,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 9.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgQrcode,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 5.v,
                    bottom: 4.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Obx(
                                () => Text(
                                  livelocationItemModelObj.weather!.value,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 6.v),
                              child: Obx(
                                () => Text(
                                  livelocationItemModelObj.weather1!.value,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ),
                            Obx(
                              () => CustomImageView(
                                imagePath: livelocationItemModelObj
                                    .temparatureHigh!.value,
                                height: 6.v,
                                width: 4.h,
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  top: 7.v,
                                  bottom: 6.v,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Obx(
                        () => Text(
                          livelocationItemModelObj.noInfoText!.value,
                          style: CustomTextStyles.bodySmallBlack90010,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 121.h,
                    top: 1.v,
                    bottom: 2.v,
                  ),
                  child: Obx(
                    () => Text(
                      livelocationItemModelObj.pageTitle2!.value,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 2.v,
                    bottom: 19.v,
                  ),
                  child: Obx(
                    () => Text(
                      livelocationItemModelObj.pageTitle3!.value,
                      style: CustomTextStyles.bodySmallRobotoLight,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgQrcode,
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
          ],
        ),
      ),
    );
  }
}
