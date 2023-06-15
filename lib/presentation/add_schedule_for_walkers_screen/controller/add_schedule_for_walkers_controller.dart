import 'package:flutter/cupertino.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/add_schedule_for_walkers_screen/models/add_schedule_for_walkers_model.dart';

import '../../../services/db/dog/dog_database.dart';
import 'package:walkwithme/globals.dart' as globals;

class AddScheduleForWalkersController extends GetxController {
  TextEditingController titleController = TextEditingController();
  TextEditingController dogIdController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  /*Future<List<Map<String, dynamic>>> dogList =
      DogDatabase.getByOwner(globals.user[0].values.toList()[0]);*/
  var dogList = <Map<String, dynamic>>[].obs;
  // It is mandatory initialize with one value from listType
  var items = <String>['a', 'bbbbbbbbb', 'c', 'd'].obs;
  var itemCurrent = 'a'.obs;
  addItem(String item) => items.add(item);

  Rx<AddScheduleForWalkersModel> addScheduleForWalkersModelObj =
      AddScheduleForWalkersModel().obs;

  @override
  void onReady() async {
    super.onReady();
    //Future<List<Map<String, dynamic>>> dogList =await DogDatabase.getByOwner(globals.user[0].values.toList()[0]);
  }

  @override
  void onInit() {
    super.onInit();
    fetchDogList();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fetchDogList() async {
    // Fetch the dog list using your desired logic
    List<Map<String, dynamic>> fetchedList =
        await DogDatabase.getByOwner(globals.user[0].values.toList()[0]);

    items.clear();
    for (var dogMap in fetchedList) {
      // Assuming the 'name' field contains the string value you want to add to items
      String dogName =
          dogMap['name'] ?? ''; // Provide a default value if the field is null

      items.add(dogName);
    }
    itemCurrent.value = items[0];
  }
}
