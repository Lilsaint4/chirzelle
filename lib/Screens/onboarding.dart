import 'package:chirzelle_sernadilla/Screens/Dashboard.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 75, 58, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(top: 50, left: 25),
              child: Image.asset(
                "android/assets/images/chef lips.png",
                width: 73,
                height: 73,
                alignment: Alignment.topLeft,
              )),
          Container(
              margin: const EdgeInsets.only(left: 40, top: 10),
              child: const Text(
                "Food for",
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    fontFamily: "AbhayaLibre"),
              )),
          Container(
              margin: const EdgeInsets.only(left: 40),
              child: const Text(
                "Everyone",
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    fontFamily: "AbhayaLibre"),
              )),
          const SizedBox(
            height: 250,
          ),
          Container(
            padding: const EdgeInsets.only(left: 51, right: 49),
            height: 70,
            width: 314,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const Dashboard();
                    },
                  ));
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 70, 10, 1),
                      fontFamily: "AbhayaLibre",
                      fontSize: 17),
                )),
          )
        ],
      ),
    );
  }
}
