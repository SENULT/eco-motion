import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:full_app/widgets/app_bar/custom_app_bar.dart';
import 'package:full_app/widgets/custom_elevated_button.dart';
import 'controller/onboarding_three_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 11.v),
                  decoration: AppDecoration.gradientWhiteAToWhiteA,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAppBar(),
                      Spacer(),
                      SizedBox(
                        height: 6.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                            spacing: 4,
                            activeDotColor: theme.colorScheme.primary,
                            dotColor: appTheme.blueGray100,
                            dotHeight: 6.v,
                            dotWidth: 6.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 25.v),
                      Text(
                        "msg_controll_exposure".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 6.v),
                      Container(
                        width: 297.h,
                        margin: EdgeInsets.only(
                          left: 38.h,
                          right: 39.h,
                        ),
                        child: Text(
                          "msg_during_your_daily".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumGray900.copyWith(
                            height: 1.57,
                          ),
                        ),
                      ),
                      SizedBox(height: 34.v),
                      CustomElevatedButton(
                        text: "lbl_get_started".tr,
                        margin: EdgeInsets.symmetric(horizontal: 32.h),
                      ),
                      SizedBox(height: 84.v),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroupGreenA700,
                height: 312.adaptSize,
                width: 312.adaptSize,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 62.v),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_skip".tr,
          margin: EdgeInsets.symmetric(horizontal: 24.h),
        ),
      ],
    );
  }
}
