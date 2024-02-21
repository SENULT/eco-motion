import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import '../controller/details_controller.dart';
import '../models/pagetitle_item_model.dart';

// ignore: must_be_immutable
class PagetitleItemWidget extends StatelessWidget {
  PagetitleItemWidget(
    this.pagetitleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PagetitleItemModel pagetitleItemModelObj;

  var controller = Get.find<DetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(bottom: 181.v),
        child: Obx(
          () => Text(
            pagetitleItemModelObj.pageTitle!.value,
            style: CustomTextStyles.titleLarge_1,
          ),
        ),
      ),
    );
  }
}
