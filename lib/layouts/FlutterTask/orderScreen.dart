import 'package:flutter/material.dart';

import 'orderData.dart';

class Orderscreen extends StatelessWidget {
   Orderscreen({super.key});

  List<Order> orders=[
    Order(
        title: "Passion ",
        amount: 2,
        price: 20.0,
        image: 'assets/images/passion-fruit.png',
    ),
    Order(
        title: "Grapes ",
        amount: 2,
        price: 20.0,
        image: 'assets/images/grapes.png',
    ),
    Order(
        title: "Mix Vegetables ",
        amount: 2,
        price: 20.0,
        image: 'assets/images/vegetables.png',
    ),
  ];

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
                child: ListView.separated(
                  itemCount: orders.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                              orders[index].image,
                            width: 50,
                            height: 50,
                          ),
                          const Spacer(),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                orders[index].title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                "${ "${orders[index].amount}"}Piece",
                                style: const TextStyle(
                                    fontSize: 15,
                                  color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                           Text(
                            "${ "${orders[index].price}"} price",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) { return const SizedBox(height: 10,); },
                   ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20),
            child: SizedBox(
              child: Row(
                children: [
                  const Expanded(child: Column(
                    children: [
                      Text("Total",style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 5,),
                      Text(
                        "20.00",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),),
                    ],
                  )),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){ },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)) // <-- Radius
                        ),
                      ),
                      child:  const Text(
                        "Order",
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
