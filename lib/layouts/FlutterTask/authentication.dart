import 'package:flutter/material.dart';
import 'package:megaminds_tasks/layouts/FlutterTask/orderScreen.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

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
           Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What is your first Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Form(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            hintText: "Name",
                            border: OutlineInputBorder(),
                          ),
                        )),
                  ],
                )
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Orderscreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)) // <-- Radius
                  ),
                ),
                child:  const Text(
                  "Start",
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
