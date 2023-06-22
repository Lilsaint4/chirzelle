import 'package:chirzelle_sernadilla/Screens/CheckoutDelivery.dart';
import 'package:chirzelle_sernadilla/Screens/Review.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool first1 = false;
  bool first2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
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
                          return const Delivery();
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
                "Payment",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontFamily: "AbhayaLibre",
                  fontSize: 30,
                ),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: const Text(
                  "Payment Method",
                  style: TextStyle(
                      fontFamily: "AbhayaLibre",
                      fontSize: 17,
                      fontWeight: FontWeight.w800),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
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
                  Image.asset("android/assets/images/card.png"),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: const Text(
                      "Card",
                      style: TextStyle(
                          fontFamily: "AbhayaLibre",
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(indent: 40, endIndent: 60),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: const Color.fromRGBO(250, 74, 12, 1),
                    activeColor: Colors.grey,
                    shape: const CircleBorder(),
                    value: option2,
                    onChanged: (bool? value) {
                      setState(() {
                        option2 = value!;
                      });
                    },
                  ),
                  Image.asset("android/assets/images/mobilepay.png"),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: const Text(
                      "Mobile Pay",
                      style: TextStyle(
                          fontFamily: "AbhayaLibre",
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(indent: 40, endIndent: 60),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: const Color.fromRGBO(250, 74, 12, 1),
                    activeColor: Colors.grey,
                    shape: const CircleBorder(),
                    value: option3,
                    onChanged: (bool? value) {
                      setState(() {
                        option3 = value!;
                      });
                    },
                  ),
                  Image.asset("android/assets/images/cod.png"),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: const Text(
                      "Cash on Delivery",
                      style: TextStyle(
                          fontFamily: "AbhayaLibre",
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
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
                        value: first1,
                        onChanged: (bool? value) {
                          setState(() {
                            first1 = value!;
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
                        value: first2,
                        onChanged: (bool? value) {
                          setState(() {
                            first2 = value!;
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
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "DELIVERY FROM URDANETA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                const Text(
                                  "N1000-N2000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 17),
                                ),
                                const Divider(
                                  indent: 20,
                                  endIndent: 40,
                                ),
                                const Text(
                                  "DELIVERY TO BINALONAN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                const Text(
                                  "N2000-N3000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 17),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Cancel",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 120,
                                      height: 60,
                                      margin: const EdgeInsets.only(
                                          bottom: 10,
                                          left: 40,
                                          right: 14,
                                          top: 20),
                                      child: ElevatedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color.fromRGBO(
                                                          250, 74, 12, 1))),
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                              builder: (context) {
                                                return const Review();
                                              },
                                            ));
                                          },
                                          child: const Text(
                                            "Proceed",
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
                        );
                      },
                    );
                  },
                  child: const Text(
                    "Proceed",
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
