import 'package:get/get.dart';
import 'home_one_item_model.dart';

/// This class defines the variables used in the [home_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeOneModel {
  Rx<List<HomeOneItemModel>> homeOneItemList =
      Rx(List.generate(3, (index) => HomeOneItemModel()));
}
