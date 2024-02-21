import 'package:flutter/material.dart';
import 'package:full_app/core/app_export.dart';
import 'controller/dashboard_one_controller.dart';

class DashboardOneDialog extends StatelessWidget {
  DashboardOneDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  DashboardOneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270.h,
      decoration: AppDecoration.fillGray5001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.v),
          Text(
            "lbl_gps_permission".tr,
            style: CustomTextStyles.bodyLargeGray900_3,
          ),
          SizedBox(height: 1.v),
          Container(
            width: 238.h,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Text(
              "msg_we_need_to_locate".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallGray900.copyWith(
                height: 1.35,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Divider(
            color: appTheme.gray8005b,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 47.h,
              right: 38.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 13.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_deny".tr,
                    style: CustomTextStyles.bodyLargeSFProTextGray900,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 44.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: appTheme.gray8005b,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 39.h,
                        top: 13.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        "lbl_accept".tr,
                        style: CustomTextStyles.titleMediumSFProTextPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
