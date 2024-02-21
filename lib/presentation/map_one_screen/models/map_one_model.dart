import '../../../core/app_export.dart';
import 'locationdatacard1_item_model.dart';

/// This class defines the variables used in the [map_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MapOneModel {
  Rx<List<Locationdatacard1ItemModel>> locationdatacard1ItemList = Rx([
    Locationdatacard1ItemModel(
        pageTitle: "Edmund Street".obs,
        pageTitle1: "Birmingham".obs,
        imageClass: ImageConstant.imgBookmark.obs,
        userImage: ImageConstant.imgUserLightGreenA700.obs,
        pageTitle2: "16".obs,
        weather: "AQI".obs,
        weather1: "21".obs,
        weather2: "°C".obs,
        userImage1: ImageConstant.imgWeatherIcons.obs)
  ]);
}
