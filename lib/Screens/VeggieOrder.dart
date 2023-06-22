import 'package:chirzelle_sernadilla/Screens/CheckoutDelivery.dart';
import 'package:chirzelle_sernadilla/Screens/Dashboard.dart';
import 'package:flutter/material.dart';

class VeggiesOrder extends StatelessWidget {
  const VeggiesOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const Dashboard();
                          },
                        ));
                      },
                      child: Image.asset("android/assets/images/back.png"),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "android/assets/images/black heart.png",
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  color: const Color.fromRGBO(242, 242, 242, 1),
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Image.asset("android/assets/images/VeggiesBig.png")),
              Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Text(
                    "Veggie tomato mix",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              const Text(
                "php 900",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontFamily: "ABeeZee",
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(250, 74, 12, 1)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: const Text(
                  "Delivery Info",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                    "Delivered between monday aug and thursday 20 from 8pm to 91:32pm",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: const Text(
                  "Return Policy",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                    "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              Container(
                width: 314,
                height: 60,
                padding: const EdgeInsets.only(
                    bottom: 5, left: 30, right: 30, top: 10),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(250, 74, 12, 1))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Delivery();
                        },
                      ));
                    },
                    child: const Text(
                      "Place Order",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "AbhayaLibre",
                          fontSize: 17),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
