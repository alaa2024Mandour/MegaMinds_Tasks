import 'dart:core';
import 'package:flutter/material.dart';
import 'package:megaminds_tasks/layouts/FlutterTask/authentication.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(

        children: [
          Container(
            width:double.infinity,
            height: 300,
            color: Colors.orangeAccent,
            child: Center(
              child: Image.asset("assets/images/fruit_blat.png",
              width: 250,
              height: 250,),
            ),
          ),
           const Expanded(
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 50),
                 child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                    "Get The Freshest Fruit Salad Combo",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                               ),
                               SizedBox(height: 10,),
                               Text(
                  "Get The Freshest Fruit Salad Combo Get The Freshest Fruit Salad Combo Get The Freshest Fruit Salad Combo",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                               ),
                             ],
                       ),
               )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Authentication()),
                    );
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)) // <-- Radius
                  ),
                ),
                  child:  const Text(
                      "Let's Continues",
                  style: TextStyle(
                    color: Colors.white
                  ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
