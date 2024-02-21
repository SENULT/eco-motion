import '../../../core/app_export.dart';

/// This class is used in the [forcastdatacard_item_widget] screen.
class ForcastdatacardItemModel {
  ForcastdatacardItemModel({
    this.time,
    this.weatherText1,
    this.weatherText2,
    this.weatherIcons,
    this.temperatureText1,
    this.temperatureText2,
    this.id,
  }) {
    time = time ?? Rx("23:00");
    weatherText1 = weatherText1 ?? Rx("2");
    weatherText2 = weatherText2 ?? Rx("AQI");
    weatherIcons = weatherIcons ?? Rx(ImageConstant.imgWeatherIconsIndigoA200);
    temperatureText1 = temperatureText1 ?? Rx("20");
    temperatureText2 = temperatureText2 ?? Rx("°C");
    id = id ?? Rx("");
  }

  Rx<String>? time;

  Rx<String>? weatherText1;

  Rx<String>? weatherText2;

  Rx<String>? weatherIcons;

  Rx<String>? temperatureText1;

  Rx<String>? temperatureText2;

  Rx<String>? id;
}
