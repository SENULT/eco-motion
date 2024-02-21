import '../../../core/app_export.dart';

/// This class is used in the [aqcard1_item_widget] screen.
class Aqcard1ItemModel {
  Aqcard1ItemModel({
    this.time,
    this.userImage,
    this.weatherText1,
    this.weatherText2,
    this.id,
  }) {
    time = time ?? Rx("17:00");
    userImage = userImage ?? Rx(ImageConstant.imgUserLightGreenA700);
    weatherText1 = weatherText1 ?? Rx("3");
    weatherText2 = weatherText2 ?? Rx("AQI");
    id = id ?? Rx("");
  }

  Rx<String>? time;

  Rx<String>? userImage;

  Rx<String>? weatherText1;

  Rx<String>? weatherText2;

  Rx<String>? id;
}
