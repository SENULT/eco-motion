import '../../../core/app_export.dart';

/// This class is used in the [locationdatacard_item_widget] screen.
class LocationdatacardItemModel {
  LocationdatacardItemModel({
    this.pageTitle,
    this.pageTitle1,
    this.userImage,
    this.pageTitle2,
    this.weather,
    this.weather1,
    this.weather2,
    this.weatherIcons,
    this.id,
  }) {
    pageTitle = pageTitle ?? Rx("Edmund Street");
    pageTitle1 = pageTitle1 ?? Rx("Birmingham");
    userImage = userImage ?? Rx(ImageConstant.imgUserOrange300);
    pageTitle2 = pageTitle2 ?? Rx("5");
    weather = weather ?? Rx("AQI");
    weather1 = weather1 ?? Rx("21");
    weather2 = weather2 ?? Rx("°C");
    weatherIcons =
        weatherIcons ?? Rx(ImageConstant.imgWeatherIconsIndigoA20016x16);
    id = id ?? Rx("");
  }

  Rx<String>? pageTitle;

  Rx<String>? pageTitle1;

  Rx<String>? userImage;

  Rx<String>? pageTitle2;

  Rx<String>? weather;

  Rx<String>? weather1;

  Rx<String>? weather2;

  Rx<String>? weatherIcons;

  Rx<String>? id;
}
