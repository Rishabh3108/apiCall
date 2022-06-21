import 'package:api/view_model/dashbord_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  DashbordControler _dashbordControler = Get.put(DashbordControler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red[500],
        centerTitle: true,
      ),
      body:
          Obx((){return _dashbordControler.itemlist.elementAt(_dashbordControler.index.value);}),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _dashbordControler.setIndex(index);
        },
        backgroundColor: Colors.red[500],
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.details,
                color: Colors.white,
              ),
              title: Text('Details')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.verified_user,
                color: Colors.white,
              ),
              title: Text('Profile')),
        ],
        currentIndex: _dashbordControler.index.value,
      ),
    );
  }
}
