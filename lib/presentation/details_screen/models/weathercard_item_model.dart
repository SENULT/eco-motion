import '../../../core/app_export.dart';

/// This class is used in the [weathercard_item_widget] screen.
class WeathercardItemModel {
  WeathercardItemModel({
    this.weather,
    this.weather1,
    this.weather2,
    this.weather3,
    this.weather4,
    this.weather5,
    this.weatherImage,
    this.id,
  }) {
    weather = weather ?? Rx("thu 11 NOV 21");
    weather1 = weather1 ?? Rx("today");
    weather2 = weather2 ?? Rx("25");
    weather3 = weather3 ?? Rx("°C");
    weather4 = weather4 ?? Rx("20");
    weather5 = weather5 ?? Rx("°C");
    weatherImage = weatherImage ?? Rx(ImageConstant.imgWeatherIconsIndigoA200);
    id = id ?? Rx("");
  }

  Rx<String>? weather;

  Rx<String>? weather1;

  Rx<String>? weather2;

  Rx<String>? weather3;

  Rx<String>? weather4;

  Rx<String>? weather5;

  Rx<String>? weatherImage;

  Rx<String>? id;
}
