import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_four_page/dashboard_four_page.dart';
import 'package:full_app/presentation/dashboard_two_page/dashboard_two_page.dart';
import 'package:full_app/widgets/custom_bottom_bar.dart';
import 'package:full_app/widgets/custom_floating_button.dart';
import 'controller/map_one_controller.dart';
import 'models/locationdatacard1_item_model.dart';
import 'widgets/locationdatacard1_item_widget.dart';

// ignore_for_file: must_be_immutable
class MapOneScreen extends GetWidget<MapOneController> {
  MapOneScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(bottom: 88.v),
          decoration: BoxDecoration(
            color: appTheme.gray5001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup239,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 677.v,
                      width: 368.h,
                      margin: EdgeInsets.only(left: 7.h),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          _buildLocationDataCard(),
                          _buildMap(),
                          _buildFloatingActionButton(),
                        ],
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 37.h),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgMapsMarkerPinGreenA7000124x24,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 7.h,
                              margin: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "lbl_25".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodySmallWhiteA700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
        floatingActionButton: _buildFloatingActionButton1(),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationDataCard() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 677.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 556.v,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 1.h,
              );
            },
            itemCount: controller
                .mapOneModelObj.value.locationdatacard1ItemList.value.length,
            itemBuilder: (context, index) {
              Locationdatacard1ItemModel model = controller
                  .mapOneModelObj.value.locationdatacard1ItemList.value[index];
              return Locationdatacard1ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMap() {
    return SizedBox(
      height: 568.v,
      width: 358.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 48,
      width: 48,
      backgroundColor: appTheme.whiteA700,
      alignment: Alignment.bottomRight,
      child: CustomImageView(
        imagePath: ImageConstant.imgSettingsPrimary48x48,
        height: 24.0.v,
        width: 24.0.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton1() {
    return CustomFloatingButton(
      height: 48,
      width: 48,
      backgroundColor: appTheme.whiteA700,
      child: CustomImageView(
        imagePath: ImageConstant.imgTrailingIconBlack900,
        height: 24.0.v,
        width: 24.0.h,
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardFourPage;
      case BottomBarEnum.Map:
        return AppRoutes.dashboardTwoPage;
      case BottomBarEnum.Transport:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardFourPage:
        return DashboardFourPage();
      case AppRoutes.dashboardTwoPage:
        return DashboardTwoPage();
      default:
        return DefaultWidget();
    }
  }
}
