import '../../../core/app_export.dart';
import 'aqcard2_item_model.dart';

/// This class defines the variables used in the [dashboard_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardFiveModel {
  Rx<List<Aqcard2ItemModel>> aqcard2ItemList = Rx([
    Aqcard2ItemModel(
        pageTitle: "17:00".obs,
        user: ImageConstant.imgUserLightGreenA700.obs,
        weatherData1: "3".obs,
        weatherData2: "AQI".obs),
    Aqcard2ItemModel(
        pageTitle: "18:00".obs,
        user: ImageConstant.imgUserYellow600.obs,
        weatherData1: "4".obs,
        weatherData2: "AQI".obs),
    Aqcard2ItemModel(
        pageTitle: "19:00".obs,
        user: ImageConstant.imgUser.obs,
        weatherData1: "2".obs,
        weatherData2: "AQI".obs),
    Aqcard2ItemModel(
        pageTitle: "20:00".obs,
        user: ImageConstant.imgUserOrange300.obs,
        weatherData1: "5".obs,
        weatherData2: "AQI".obs),
    Aqcard2ItemModel(
        pageTitle: "21:00".obs,
        user: ImageConstant.imgUserYellow60016x16.obs,
        weatherData1: "4".obs,
        weatherData2: "AQI".obs),
    Aqcard2ItemModel(
        pageTitle: "22:00".obs,
        user: ImageConstant.imgUser.obs,
        weatherData1: "2".obs,
        weatherData2: "AQI".obs),
    Aqcard2ItemModel(
        pageTitle: "20:00".obs,
        user: ImageConstant.imgUserOrange300.obs,
        weatherData1: "5".obs,
        weatherData2: "AQI".obs),
    Aqcard2ItemModel(
        pageTitle: "21:00".obs,
        user: ImageConstant.imgUserYellow60016x16.obs,
        weatherData1: "4".obs,
        weatherData2: "AQI".obs),
    Aqcard2ItemModel(
        pageTitle: "22:00".obs,
        user: ImageConstant.imgUser.obs,
        weatherData1: "2".obs,
        weatherData2: "AQI".obs),
    Aqcard2ItemModel(
        pageTitle: "23:00".obs,
        user: ImageConstant.imgUserGreenA400.obs,
        weatherData1: "1".obs,
        weatherData2: "AQI".obs)
  ]);
}
