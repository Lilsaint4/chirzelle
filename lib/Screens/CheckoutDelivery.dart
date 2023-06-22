import 'package:chirzelle_sernadilla/Screens/Payment.dart';
import 'package:chirzelle_sernadilla/Screens/VeggieOrder.dart';
import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  bool option1 = false;
  bool option2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
      body: ListView(children: [
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
                          return const VeggiesOrder();
                        },
                      ));
                    },
                    child: Image.asset("android/assets/images/back.png"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 80, top: 30),
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontFamily: "AbhayaLibre",
                        fontSize: 18),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Delivery",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontFamily: "AbhayaLibre",
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Address Details",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "change",
                      style: TextStyle(
                          color: Color.fromRGBO(244, 123, 10, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              width: 315,
              height: 150,
              margin: const EdgeInsets.only(left: 50, right: 45, top: 20),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 25, left: 30),
                      child: const Text(
                        "Carl Sernadilla",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Abhaya"),
                      )),
                  const Divider(
                    indent: 30,
                    endIndent: 40,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 30),
                      child: const Text(
                        "Binalonan, Pangasinan",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                  const Divider(
                    indent: 30,
                    endIndent: 40,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 8, left: 30),
                    child: const Text(
                      "+234 9011039271",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 56, top: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Delivery Method",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              width: 315,
              height: 150,
              margin: const EdgeInsets.only(left: 50, right: 45, top: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        checkColor: const Color.fromRGBO(250, 74, 12, 1),
                        activeColor: Colors.grey,
                        shape: const CircleBorder(),
                        value: option1,
                        onChanged: (bool? value) {
                          setState(() {
                            option1 = value!;
                          });
                        },
                      ),
                      const Text("Door Delivery"),
                    ],
                  ),
                  const Divider(
                    indent: 30,
                    endIndent: 40,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.grey,
                        checkColor: const Color.fromRGBO(250, 74, 12, 1),
                        shape: const CircleBorder(),
                        value: option2,
                        onChanged: (bool? value) {
                          setState(() {
                            option2 = value!;
                          });
                        },
                      ),
                      const Text("Pick Up"),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 50, top: 30),
                    child: const Text(
                      "Total",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          fontFamily: "AbhayaLibre"),
                    )),
                Container(
                    margin: const EdgeInsets.only(left: 50, top: 30, right: 50),
                    child: const Text(
                      "23000",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          fontFamily: "AbhayaLibre"),
                    ))
              ],
            ),
            Container(
              width: 314,
              height: 60,
              margin: const EdgeInsets.only(
                  bottom: 10, left: 40, right: 40, top: 10),
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(250, 74, 12, 1))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Payment();
                      },
                    ));
                  },
                  child: const Text(
                    "Proceed Payment",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "AbhayaLibre",
                        fontSize: 17),
                  )),
            )
          ],
        )
      ]),
    );
  }
}
