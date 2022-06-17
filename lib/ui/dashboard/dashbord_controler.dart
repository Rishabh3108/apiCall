import 'package:api/ui/dashboard/home/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DashbordControler extends GetxController{
  List itemlist =[Home(),Container(child: Text('two'),),Container(child: Text('three'),)];

  var index = 0.obs;
  setIndex(var value){
    index.value =value;
    update();
  }

}