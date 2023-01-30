import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/controller/data_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //1st creat instance of Controller
  final controller = Get.put(DataController()); //   ! Dependacy injection !

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Getx API',
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        //2nd create obx
        child: Obx(() {
          ///3rd store data value
          var data = controller.dataModel.value;
          //display data
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("${data.image}"),
              Text(data.category ?? ""),
              Text(data.title ?? ""),
              Text(data.price.toString()),
              Text(data.description ?? ""),
            ],
          );
        }),
      ),
    );
  }
}
