import '../../../core/app_export.dart';
import 'weathercard1_item_model.dart';

/// This class defines the variables used in the [dashboard_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardEightModel {
  Rx<List<Weathercard1ItemModel>> weathercard1ItemList = Rx([
    Weathercard1ItemModel(
        weather: "thu 11 NOV 21".obs,
        weather1: "today".obs,
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIconsIndigoA200.obs),
    Weathercard1ItemModel(
        weather: "Fri 12 NOV 21".obs,
        weather1: "Tomorrow".obs,
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIcons.obs),
    Weathercard1ItemModel(
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIconsIndigoA20024x24.obs),
    Weathercard1ItemModel(
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIcons24x24.obs),
    Weathercard1ItemModel(
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIcons1.obs),
    Weathercard1ItemModel(
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIcons2.obs)
  ]);
}
