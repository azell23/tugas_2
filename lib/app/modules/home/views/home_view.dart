import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
      body: Container(
        width: Get.width ,
        height: Get.height ,
        color: Colors.blue,
        child: LayoutBuilder(builder: (context, constraints) {
          double lebarMerah = constraints.maxWidth;
          double tinggiMerah = constraints.maxHeight;
          return Stack(
            children: [
              Center(
                child: Container(
                  width: lebarMerah * 0.25,
                  height: tinggiMerah * 0.25,
                  color: Colors.white,
                ),
                
              )
            ],
          );
        }),
      ),
    );
  }
}
