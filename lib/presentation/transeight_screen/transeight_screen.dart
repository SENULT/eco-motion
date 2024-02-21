import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:full_app/core/app_export.dart';
import 'package:full_app/presentation/dashboard_four_page/dashboard_four_page.dart';
import 'package:full_app/presentation/dashboard_two_page/dashboard_two_page.dart';
import 'package:full_app/widgets/custom_bottom_bar.dart';
import 'controller/transeight_controller.dart';

// ignore_for_file: must_be_immutable
class TranseightScreen extends GetWidget<TranseightController> {
  TranseightScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: _buildMap(),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildMap() {
    return SizedBox(
      height: 765.v,
      width: 374.h,
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
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
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
