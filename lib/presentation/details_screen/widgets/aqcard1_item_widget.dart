import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import '../controller/details_controller.dart';
import '../models/aqcard1_item_model.dart';

// ignore: must_be_immutable
class Aqcard1ItemWidget extends StatelessWidget {
  Aqcard1ItemWidget(
    this.aqcard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Aqcard1ItemModel aqcard1ItemModelObj;

  var controller = Get.find<DetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 44.h,
      child: Align(
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
                    aqcard1ItemModelObj.time!.value,
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
                  imagePath: aqcard1ItemModelObj.userImage!.value,
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
                      aqcard1ItemModelObj.weatherText1!.value,
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
                        aqcard1ItemModelObj.weatherText2!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
