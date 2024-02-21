import '../../../core/app_export.dart';

/// This class is used in the [livelocation_item_widget] screen.
class LivelocationItemModel {
  LivelocationItemModel({
    this.gps,
    this.pageTitle,
    this.pageTitle1,
    this.weather,
    this.weather1,
    this.temparatureHigh,
    this.noInfoText,
    this.pageTitle2,
    this.pageTitle3,
    this.id,
  }) {
    gps = gps ?? Rx(ImageConstant.imgGps);
    pageTitle = pageTitle ?? Rx("-");
    pageTitle1 = pageTitle1 ?? Rx("-");
    weather = weather ?? Rx("-");
    weather1 = weather1 ?? Rx("°C");
    temparatureHigh = temparatureHigh ?? Rx(ImageConstant.imgTemparatureHigh);
    noInfoText = noInfoText ?? Rx("No information found");
    pageTitle2 = pageTitle2 ?? Rx("-");
    pageTitle3 = pageTitle3 ?? Rx("AQI");
    id = id ?? Rx("");
  }

  Rx<String>? gps;

  Rx<String>? pageTitle;

  Rx<String>? pageTitle1;

  Rx<String>? weather;

  Rx<String>? weather1;

  Rx<String>? temparatureHigh;

  Rx<String>? noInfoText;

  Rx<String>? pageTitle2;

  Rx<String>? pageTitle3;

  Rx<String>? id;
}
