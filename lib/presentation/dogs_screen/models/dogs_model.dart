import 'package:get/get.dart';
import 'dogs_item_model.dart';

/// This class defines the variables used in the [dogs_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DogsModel {
  Rx<List<DogsItemModel>> dogsItemList =
      Rx(List.generate(3, (index) => DogsItemModel()));
}
