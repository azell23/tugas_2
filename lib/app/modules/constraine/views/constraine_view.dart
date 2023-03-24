import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/constraine_controller.dart';

class ConstraineView extends GetView<ConstraineController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text('HOME'),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Container(
        width: Get.width  ,
        height: Get.height * 0.3 ,
        color: Colors.blue,
        child: LayoutBuilder(builder: (context, constraints) {
          double lebarMerah = constraints.maxWidth;
          double tinggiMerah = constraints.maxHeight;
          return Stack(
            children: [
              Container(
                  width: lebarMerah* 0.7 ,
                  height: tinggiMerah ,
                  color: Colors.green,
              ),
              Container(
                  width: lebarMerah* 0.3 ,
                  height: tinggiMerah ,
                  color: Colors.red,
              )
            ],
          );
        }),
      ),
      Container(
            width: Get.width ,
            height: Get.height *0.3 ,
            color: Colors.black,
      )
        ],
      )
    );
  }
}
