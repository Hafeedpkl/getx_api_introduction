import 'package:get/get.dart';
import 'package:getx_learning/model/data_model.dart';
import 'package:getx_learning/service/data_service.dart';

class DataController extends GetxController {
// 1st create instance variable
  var dataModel = DataModel().obs;
  getData() async {
    //2nd craete instance of getservice
    try {
      var data = await DataServices().getService();
      //3rd Check condition
      if (data != null) {
        dataModel.value = data;
      }
    } catch (e) {
      Get.snackbar("title", "$e");
    }
  }

  void onInit() {
    getData();
    super.onInit();
  }
}
