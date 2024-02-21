import 'package:full_app/core/app_export.dart';
import '../../../core/app_export.dart';

/// This class is used in the [aqhistory_item_widget] screen.
class AqhistoryItemModel {
  AqhistoryItemModel({
    this.dropdownItemList,
    this.id,
  }) {
    dropdownItemList = dropdownItemList ??
        Rx([
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
    id = id ?? Rx("");
  }

  Rx<List<SelectionPopupModel>>? dropdownItemList;

  Rx<String>? id;
}
