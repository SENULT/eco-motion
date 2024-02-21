import '../../../core/app_export.dart';
import 'forcastdatacard_item_model.dart';
import 'locationdatacard_item_model.dart';

/// This class defines the variables used in the [dashboard_four_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardFourModel {
  Rx<List<ForcastdatacardItemModel>> forcastdatacardItemList = Rx([
    ForcastdatacardItemModel(
        time: "23:00".obs,
        weatherText1: "2".obs,
        weatherText2: "AQI".obs,
        weatherIcons: ImageConstant.imgWeatherIconsIndigoA200.obs,
        temperatureText1: "20".obs,
        temperatureText2: "°C".obs),
    ForcastdatacardItemModel(
        time: "21:00".obs,
        weatherText1: "2".obs,
        weatherText2: "AQI".obs,
        weatherIcons: ImageConstant.imgWeatherIconsIndigoA20024x24.obs,
        temperatureText1: "21".obs,
        temperatureText2: "°C".obs),
    ForcastdatacardItemModel(
        time: "22:00".obs,
        weatherText1: "1".obs,
        weatherText2: "AQI".obs,
        weatherIcons: ImageConstant.imgWeatherIcons.obs,
        temperatureText1: "20".obs,
        temperatureText2: "°C".obs),
    ForcastdatacardItemModel(
        time: "23:00".obs,
        weatherText1: "2".obs,
        weatherText2: "AQI".obs,
        weatherIcons: ImageConstant.imgWeatherIconsIndigoA20024x24.obs,
        temperatureText1: "20".obs,
        temperatureText2: "°C".obs),
    ForcastdatacardItemModel(
        time: "23:00".obs,
        weatherText1: "2".obs,
        weatherText2: "AQI".obs,
        weatherIcons: ImageConstant.imgWeatherIconsIndigoA200.obs,
        temperatureText1: "20".obs,
        temperatureText2: "°C".obs)
  ]);

  Rx<List<LocationdatacardItemModel>> locationdatacardItemList = Rx([
    LocationdatacardItemModel(
        pageTitle: "Edmund Street".obs,
        pageTitle1: "Birmingham".obs,
        userImage: ImageConstant.imgUserOrange300.obs,
        pageTitle2: "5".obs,
        weather: "AQI".obs,
        weather1: "21".obs,
        weather2: "°C".obs,
        weatherIcons: ImageConstant.imgWeatherIconsIndigoA20016x16.obs),
    LocationdatacardItemModel(
        pageTitle: "Berkley Street".obs,
        pageTitle1: "Birmingham".obs,
        userImage: ImageConstant.imgUserYellow600.obs,
        pageTitle2: "4".obs,
        weather: "AQI".obs,
        weather1: "21".obs,
        weather2: "°C".obs,
        weatherIcons: ImageConstant.imgWeatherIcons.obs)
  ]);
}
