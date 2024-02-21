import '../../../core/app_export.dart';

/// This class is used in the [aqcard2_item_widget] screen.
class Aqcard2ItemModel {
  Aqcard2ItemModel({
    this.pageTitle,
    this.user,
    this.weatherData1,
    this.weatherData2,
    this.id,
  }) {
    pageTitle = pageTitle ?? Rx("17:00");
    user = user ?? Rx(ImageConstant.imgUserLightGreenA700);
    weatherData1 = weatherData1 ?? Rx("3");
    weatherData2 = weatherData2 ?? Rx("AQI");
    id = id ?? Rx("");
  }

  Rx<String>? pageTitle;

  Rx<String>? user;

  Rx<String>? weatherData1;

  Rx<String>? weatherData2;

  Rx<String>? id;
}
