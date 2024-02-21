import '../../../core/app_export.dart';

/// This class is used in the [maptwo_item_widget] screen.
class MaptwoItemModel {
  MaptwoItemModel({
    this.pageTitle,
    this.pageTitle1,
    this.edmundStreet,
    this.pageTitle2,
    this.weather,
    this.weather1,
    this.weather2,
    this.id,
  }) {
    pageTitle = pageTitle ?? Rx("Edmund Street");
    pageTitle1 = pageTitle1 ?? Rx("Birmingham");
    edmundStreet = edmundStreet ?? Rx(ImageConstant.imgBookmark);
    pageTitle2 = pageTitle2 ?? Rx("16");
    weather = weather ?? Rx("AQI");
    weather1 = weather1 ?? Rx("21");
    weather2 = weather2 ?? Rx("°C");
    id = id ?? Rx("");
  }

  Rx<String>? pageTitle;

  Rx<String>? pageTitle1;

  Rx<String>? edmundStreet;

  Rx<String>? pageTitle2;

  Rx<String>? weather;

  Rx<String>? weather1;

  Rx<String>? weather2;

  Rx<String>? id;
}
