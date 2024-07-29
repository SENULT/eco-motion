// ignore_for_file: duplicate_import

import 'package:full_app/core/app_export.dart';
import '../../../core/app_export.dart';
import 'aqcard1_item_model.dart';
import 'pagetitle_item_model.dart';
import 'weathercard_item_model.dart';
import 'healthdatacardapp_item_model.dart';

/// This class defines the variables used in the [details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailsModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<Aqcard1ItemModel>> aqcard1ItemList = Rx([
    Aqcard1ItemModel(
        time: "17:00".obs,
        userImage: ImageConstant.imgUserLightGreenA700.obs,
        weatherText1: "3".obs,
        weatherText2: "AQI".obs),
    Aqcard1ItemModel(
        time: "18:00".obs,
        userImage: ImageConstant.imgUserYellow600.obs,
        weatherText1: "4".obs,
        weatherText2: "AQI".obs),
    Aqcard1ItemModel(
        time: "19:00".obs,
        userImage: ImageConstant.imgUser.obs,
        weatherText1: "2".obs,
        weatherText2: "AQI".obs),
    Aqcard1ItemModel(
        time: "20:00".obs,
        userImage: ImageConstant.imgUserOrange300.obs,
        weatherText1: "5".obs,
        weatherText2: "AQI".obs),
    Aqcard1ItemModel(
        time: "21:00".obs,
        userImage: ImageConstant.imgUserYellow60016x16.obs,
        weatherText1: "4".obs,
        weatherText2: "AQI".obs),
    Aqcard1ItemModel(
        time: "22:00".obs,
        userImage: ImageConstant.imgUser.obs,
        weatherText1: "2".obs,
        weatherText2: "AQI".obs),
    Aqcard1ItemModel(
        time: "20:00".obs,
        userImage: ImageConstant.imgUserOrange300.obs,
        weatherText1: "5".obs,
        weatherText2: "AQI".obs),
    Aqcard1ItemModel(
        time: "21:00".obs,
        userImage: ImageConstant.imgUserYellow60016x16.obs,
        weatherText1: "4".obs,
        weatherText2: "AQI".obs),
    Aqcard1ItemModel(
        time: "22:00".obs,
        userImage: ImageConstant.imgUser.obs,
        weatherText1: "2".obs,
        weatherText2: "AQI".obs),
    Aqcard1ItemModel(
        time: "23:00".obs,
        userImage: ImageConstant.imgUserGreenA400.obs,
        weatherText1: "1".obs,
        weatherText2: "AQI".obs)
  ]);

  Rx<List<PagetitleItemModel>> pagetitleItemList =
      Rx([PagetitleItemModel(pageTitle: "Weather".obs)]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList3 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<WeathercardItemModel>> weathercardItemList = Rx([
    WeathercardItemModel(
        weather: "thu 11 NOV 21".obs,
        weather1: "today".obs,
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIconsIndigoA200.obs),
    WeathercardItemModel(
        weather: "Fri 12 NOV 21".obs,
        weather1: "Tomorrow".obs,
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIcons.obs),
    WeathercardItemModel(
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIconsIndigoA20024x24.obs),
    WeathercardItemModel(
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIcons24x24.obs),
    WeathercardItemModel(
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIcons1.obs),
    WeathercardItemModel(
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIcons2.obs),
    WeathercardItemModel(
        weather2: "25".obs,
        weather3: "°C".obs,
        weather4: "20".obs,
        weather5: "°C".obs,
        weatherImage: ImageConstant.imgWeatherIcons3.obs)
  ]);

  Rx<List<HealthdatacardappItemModel>> healthdatacardappItemList = Rx([
    HealthdatacardappItemModel(pageTitle: "General".obs),
    HealthdatacardappItemModel(pageTitle: "General".obs),
    HealthdatacardappItemModel(pageTitle: "Asthma".obs),
    HealthdatacardappItemModel(pageTitle: "Asthma".obs)
  ]);
}
