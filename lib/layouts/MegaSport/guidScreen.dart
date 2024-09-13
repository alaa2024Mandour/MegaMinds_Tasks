import 'package:flutter/material.dart';
import 'package:megaminds_tasks/layouts/MegaSport/profile.dart';

import 'home.dart';

class GuidScreen extends StatefulWidget {
  const GuidScreen({super.key});

  @override
  State<GuidScreen> createState() => _GuidScreenState();


}
class _GuidScreenState extends State<GuidScreen> {

  int selectIndex=0;



  void selectTapedIndex(int index){
    setState(() {
      selectIndex=index;
    });
  }

  final List<Widget> pages = [
    const HomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
        ),
        title: const Center(
          child: Text(
            "Mega Sport",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.logout,color: Colors.white,))
        ],
      ),
    body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectTapedIndex,
        currentIndex: selectIndex,
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.white,
        selectedFontSize: 20,
        unselectedItemColor: Colors.grey,
        items:const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
            label: "Home"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
            label: "Profile"
          ),
        ],

      ),
    );
  }
}
