import 'package:chirzelle_sernadilla/Screens/Dashboard.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const Dashboard();
                          },
                        ));
                      },
                      child: Image.asset("android/assets/images/back.png"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 80, top: 30),
                    child: Text(
                      "History",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontFamily: "AbhayaLibre",
                          fontSize: 18),
                    ),
                  )
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 100),
                        child: Image.asset(
                          "android/assets/images/historypage.png",
                        ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 26),
                child: const Text(
                  "No History yet",
                  style: TextStyle(
                    fontFamily: "Abhaya",
                    fontSize: 28.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 50, right: 59),
                child: const Text(
                  "Hit the orange button down below to Create an order",
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
