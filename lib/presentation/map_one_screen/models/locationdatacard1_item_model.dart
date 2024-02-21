import '../../../core/app_export.dart';

/// This class is used in the [locationdatacard1_item_widget] screen.
class Locationdatacard1ItemModel {
  Locationdatacard1ItemModel({
    this.pageTitle,
    this.pageTitle1,
    this.imageClass,
    this.userImage,
    this.pageTitle2,
    this.weather,
    this.weather1,
    this.weather2,
    this.userImage1,
    this.id,
  }) {
    pageTitle = pageTitle ?? Rx("Edmund Street");
    pageTitle1 = pageTitle1 ?? Rx("Birmingham");
    imageClass = imageClass ?? Rx(ImageConstant.imgBookmark);
    userImage = userImage ?? Rx(ImageConstant.imgUserLightGreenA700);
    pageTitle2 = pageTitle2 ?? Rx("16");
    weather = weather ?? Rx("AQI");
    weather1 = weather1 ?? Rx("21");
    weather2 = weather2 ?? Rx("°C");
    userImage1 = userImage1 ?? Rx(ImageConstant.imgWeatherIcons);
    id = id ?? Rx("");
  }

  Rx<String>? pageTitle;

  Rx<String>? pageTitle1;

  Rx<String>? imageClass;

  Rx<String>? userImage;

  Rx<String>? pageTitle2;

  Rx<String>? weather;

  Rx<String>? weather1;

  Rx<String>? weather2;

  Rx<String>? userImage1;

  Rx<String>? id;
}
