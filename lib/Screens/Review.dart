import 'package:chirzelle_sernadilla/Screens/Dashboard.dart';
import 'package:chirzelle_sernadilla/Screens/Payment.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 30, top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Payment();
                      },
                    ));
                  },
                  child: Image.asset("android/assets/images/back.png"),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text(
                    "COMPLETE ORDER",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  )),
              Image.asset("android/assets/images/review.png"),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  "Review",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text(
                        "Rating 5.0",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontFamily: "AbhayaLibre",
                            fontSize: 20),
                      )),
                  Image.asset("android/assets/images/stars.png")
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30, top: 10),
                color: const Color.fromRGBO(242, 242, 242, 1),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "reviews",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 60,
                    margin: const EdgeInsets.only(
                        bottom: 10, left: 20, right: 14, top: 20),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(250, 74, 12, 1))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Dashboard();
                            },
                          ));
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "AbhayaLibre",
                              fontSize: 17),
                        )),
                  ),
                  Container(
                    width: 120,
                    height: 60,
                    margin: const EdgeInsets.only(
                        bottom: 10, left: 30, right: 6, top: 20),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(250, 74, 12, 1))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Dashboard();
                            },
                          ));
                        },
                        child: const Text(
                          "Feedback",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "AbhayaLibre",
                              fontSize: 17),
                        )),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
