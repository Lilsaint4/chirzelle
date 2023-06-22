import 'package:chirzelle_sernadilla/Screens/VeggieOrder.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<String> _pageRoutes = [
    '/home',
    '/orders',
    '/user',
    '/history',
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 1),
      body: ListView(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 61, left: 45),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "android/assets/images/Menu.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 61, right: 35),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "android/assets/images/shopping-cart.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 50, top: 25),
              child: const Text(
                "Delicious",
                style: TextStyle(
                    fontFamily: "ABeeZee",
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 50),
              child: const Text("food for you",
                  style: TextStyle(
                      fontFamily: "ABeeZee",
                      fontStyle: FontStyle.italic,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w400)),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
              child: const SearchBar(
                elevation: MaterialStatePropertyAll(0),
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromRGBO(239, 238, 238, 1)),
                leading: Icon(Icons.search),
                hintText: "Search",
              ),
            ),
            const DefaultTabController(
                length: 4,
                child: TabBar(
                  tabs: [
                    Text(
                      "Foods",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text("Drinks",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        )),
                    Text("Snacks",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        )),
                    Text("Sauce",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                  dividerColor: Color.fromRGBO(242, 242, 242, 1),
                  unselectedLabelColor: Color.fromRGBO(154, 154, 157, 1),
                  labelColor: Color.fromRGBO(250, 74, 12, 1),
                  padding: EdgeInsets.only(left: 45, top: 30),
                  isScrollable: true,
                  indicatorColor: Color.fromRGBO(250, 74, 12, 1),
                )),
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const VeggiesOrder();
                      },
                    ));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 60, left: 50),
                    margin: const EdgeInsets.only(top: 45),
                    height: 160,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Row(children: [
                      Column(
                        children: [
                          Text(
                            "Veggie",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "Tomato Mix",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "php 900",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontFamily: "ABeeZee",
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(250, 74, 12, 1)),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
                Positioned(
                  child: Container(
                    padding: const EdgeInsets.only(left: 35),
                    child: Image.asset(
                      "android/assets/images/veggies.png",
                      width: 80,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: const Color.fromRGBO(173, 173, 175, 1),
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
            Navigator.pushNamed(context, _pageRoutes[index]);
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("android/assets/images/Home.png"),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("android/assets/images/order.png"),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("android/assets/images/user.png"),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("android/assets/images/history.png"),
              label: "",
            ),
          ]),
    );
  }
}
