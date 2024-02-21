import '../../../core/app_export.dart';
import 'livelocation_item_model.dart';

/// This class defines the variables used in the [dashboard_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardTwoModel {
  Rx<List<LivelocationItemModel>> livelocationItemList = Rx([
    LivelocationItemModel(
        gps: ImageConstant.imgGps.obs,
        pageTitle: "-".obs,
        pageTitle1: "-".obs,
        weather: "-".obs,
        weather1: "°C".obs,
        temparatureHigh: ImageConstant.imgTemparatureHigh.obs,
        noInfoText: "No information found".obs,
        pageTitle2: "-".obs,
        pageTitle3: "AQI".obs)
  ]);
}
