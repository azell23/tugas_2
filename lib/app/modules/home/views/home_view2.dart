import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView2 extends GetView<HomeController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;
  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text('HOME'),
      );
    }

    double heightBody = context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Row(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 150,
              maxWidth: 350,
              minHeight: 100,
              minWidth: 300
            ),
            child: Container(
              height: 10000,
              color: Colors.red,
              child: Text('pertama',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
              ),
            ),  
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 150,
              maxWidth: 350,
              minHeight: 100,
              minWidth: 300
            ),
            child: Container(
              height: 10000,
              color: Colors.amber,
              child: Text('kedua',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
              ),
            ),  
          ),
          ],
      )
    );
  }
}
