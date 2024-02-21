import '../../../core/app_export.dart';
import 'maptwo_item_model.dart';

/// This class defines the variables used in the [map_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MapTwoModel {
  Rx<List<MaptwoItemModel>> maptwoItemList = Rx([
    MaptwoItemModel(
        pageTitle: "Edmund Street".obs,
        pageTitle1: "Birmingham".obs,
        edmundStreet: ImageConstant.imgBookmark.obs,
        pageTitle2: "16".obs,
        weather: "AQI".obs,
        weather1: "21".obs,
        weather2: "°C".obs)
  ]);
}
