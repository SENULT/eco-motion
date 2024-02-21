import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import '../controller/map_one_controller.dart';
import '../models/locationdatacard1_item_model.dart';

// ignore: must_be_immutable
class Locationdatacard1ItemWidget extends StatelessWidget {
  Locationdatacard1ItemWidget(
    this.locationdatacard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Locationdatacard1ItemModel locationdatacard1ItemModelObj;

  var controller = Get.find<MapOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            top: 23.v,
            bottom: 10.v,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          locationdatacard1ItemModelObj.pageTitle!.value,
                          style: CustomTextStyles.bodySmallBlack90012,
                        ),
                      ),
                      SizedBox(
                        width: 36.h,
                        child: Obx(
                          () => Text(
                            locationdatacard1ItemModelObj.pageTitle1!.value,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 1.25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath:
                          locationdatacard1ItemModelObj.imageClass!.value,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(
                        left: 67.h,
                        top: 4.v,
                        bottom: 13.v,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: locationdatacard1ItemModelObj.userImage!.value,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.only(
                        top: 11.v,
                        bottom: 3.v,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Obx(
                      () => Text(
                        locationdatacard1ItemModelObj.pageTitle2!.value,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 8.v,
                      bottom: 3.v,
                    ),
                    child: Obx(
                      () => Text(
                        locationdatacard1ItemModelObj.weather!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 65.h,
                      top: 2.v,
                      bottom: 1.v,
                    ),
                    child: Obx(
                      () => Text(
                        locationdatacard1ItemModelObj.weather1!.value,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    child: Obx(
                      () => Text(
                        locationdatacard1ItemModelObj.weather2!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath:
                          locationdatacard1ItemModelObj.userImage1!.value,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        top: 9.v,
                        bottom: 1.v,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.v),
            ],
          ),
        ),
      ),
    );
  }
}
