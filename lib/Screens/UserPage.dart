import 'package:chirzelle_sernadilla/Screens/Dashboard.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
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
              Container(
                padding: const EdgeInsets.only(left: 20, top: 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "My Profile",
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
                      "Personal Details",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
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
                child: Row(
                  children: [
                    Image.asset("android/assets/images/userpic.png"),
                    Column(
                      children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(top: 25, left: 10),
                            child: const Text(
                              "Carl Sernadilla",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "Abhaya"),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 10, top: 8),
                            child: const Text(
                              "Carl@gmail.com",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 10, top: 8),
                            child: const Text(
                              "+234 9011039271",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 10, top: 8),
                            child: const Text(
                              "Binalonan,Pangasinan",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 315,
                height: 60,
                margin: const EdgeInsets.only(left: 30, right: 40, top: 20),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          "Orders",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Abhaya"),
                        )),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.navigate_next))
                  ],
                ),
              ),
              Container(
                width: 315,
                height: 60,
                margin: const EdgeInsets.only(left: 30, right: 40, top: 20),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          "Pending reviews",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Abhaya"),
                        )),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.navigate_next))
                  ],
                ),
              ),
              Container(
                width: 315,
                height: 60,
                margin: const EdgeInsets.only(left: 30, right: 40, top: 20),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          "Faq",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Abhaya"),
                        )),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.navigate_next))
                  ],
                ),
              ),
              Container(
                width: 315,
                height: 60,
                margin: const EdgeInsets.only(left: 30, right: 40, top: 20),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10, bottom: 15),
                        child: const Text(
                          "Help",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Abhaya"),
                        )),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.navigate_next))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
