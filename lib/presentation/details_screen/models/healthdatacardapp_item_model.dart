import '../../../core/app_export.dart';

/// This class is used in the [healthdatacardapp_item_widget] screen.
class HealthdatacardappItemModel {
  HealthdatacardappItemModel({
    this.pageTitle,
    this.id,
  }) {
    pageTitle = pageTitle ?? Rx("General");
    id = id ?? Rx("");
  }

  Rx<String>? pageTitle;

  Rx<String>? id;
}
