import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/history_screen/models/history_model.dart';
import 'package:walkwithme/widgets/custom_bottom_bar.dart';

class HistoryController extends GetxController {
  Rx<HistoryModel> historyModelObj = HistoryModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
