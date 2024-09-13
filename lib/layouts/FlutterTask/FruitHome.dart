import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megaminds_tasks/layouts/FlutterTask/welcomScreen.dart';

class FruitHome extends StatelessWidget {
  const FruitHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Image(image:
          AssetImage("assets/images/fruit.png",),
          width: 100,
          height: 100,),
          const SizedBox(height: 30,),
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  WelcomeScreen()),
                );
              },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ) // <-- Radius
              ),
            ),
              child: const Text("Fruit Hub",
              style: TextStyle(
                color: Colors.white
              ),),
          )
        ],
      ),
    );
  }
}
