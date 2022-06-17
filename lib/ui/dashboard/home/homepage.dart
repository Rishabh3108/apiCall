import 'package:api/ui/dashboard/home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
   Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController _homeController =  Get.put(HomeController());


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeController.newsApiCall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: _homeController.dataList!.length,
            itemBuilder: (BuildContext c, int i) {
              return Column(
                children: [
                  Container(
                    height: 320,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red[200],
                    child: Image.network(
                      _homeController.dataList![i].imageUrl!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(_homeController.dataList![i].content!,style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30),)
                ],
              );
            }));
  }
}
