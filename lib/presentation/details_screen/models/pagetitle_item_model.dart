import '../../../core/app_export.dart';

/// This class is used in the [pagetitle_item_widget] screen.
class PagetitleItemModel {
  PagetitleItemModel({
    this.pageTitle,
    this.id,
  }) {
    pageTitle = pageTitle ?? Rx("Weather");
    id = id ?? Rx("");
  }

  Rx<String>? pageTitle;

  Rx<String>? id;
}
