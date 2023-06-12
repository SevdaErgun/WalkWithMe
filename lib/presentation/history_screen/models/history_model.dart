import 'package:get/get.dart';
import 'history_item_model.dart';

/// This class defines the variables used in the [history_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryModel {
  Rx<List<HistoryItemModel>> historyItemList =
      Rx(List.generate(2, (index) => HistoryItemModel()));
}
