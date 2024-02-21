import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:full_app/widgets/app_bar/custom_app_bar.dart';
import 'package:full_app/widgets/custom_elevated_button.dart';
import 'controller/onboarding_two_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
  const OnboardingTwoScreen({Key? key})
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
            alignment: Alignment.topCenter,
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
                      SizedBox(height: 22.v),
                      Text(
                        "lbl_track_pollution".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 9.v),
                      Container(
                        width: 305.h,
                        margin: EdgeInsets.symmetric(horizontal: 34.h),
                        child: Text(
                          "msg_discover_your_personal".tr,
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
                height: 312.v,
                width: 375.h,
                alignment: Alignment.topCenter,
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
