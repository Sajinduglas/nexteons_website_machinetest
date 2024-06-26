
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import '../../../model/emergency_kit_model.dart';


class EmergencyKitController extends GetxController {
  var emergencyKitModel = EmergencyKitModel().obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchEmergencyKits();
  }

  void fetchEmergencyKits() async {
    isLoading(true);
    try {
      var response = await Dio().post(
        'https://migrainetracker.api.salonsyncs.com/api/emergency-kit/list',
        data: {
          "sortType": 0,
          "sortOrder": -1,
          "statusArray": [
            1
          ],
          "screenType": [
            0
          ],
          "emergencyKitIds": [

          ],
          "userIds":
          ["6634db7665f74a0faeb0abc9"]
          ,
          "limit": -1,
          "skip": -1,
          "searchingText": ""
        }
      );
      if (response.statusCode == 201) {
        print(response.statusCode);
        print(response.data);
        emergencyKitModel.value = EmergencyKitModel.fromJson(response.data);
      } else {
        // Handle errors
      }
    } catch (e) {
      // Handle errors
      print(e);
    } finally {
      isLoading(false);
    }
  }
}

