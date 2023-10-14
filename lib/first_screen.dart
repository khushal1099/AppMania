import 'package:appmania/SecondPage.dart';
import 'package:flutter/material.dart';
import 'cart.dart';
import 'util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 8, right: 8, left: 20, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "📍  Habiganj City",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return cart();
                                },
                              ),
                            );
                          },
                          child: Icon(
                            Icons.shopping_cart,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(5),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 3, bottom: 3, left: 20, right: 20),
                child: Text.rich(
                  TextSpan(
                    text: "Find The",
                    style: TextStyle(fontSize: 35),
                    children: [
                      TextSpan(
                        text: " Best\nFood",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                      TextSpan(
                        text: " Around You",
                        style: TextStyle(fontSize: 35),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.tune),
                    hintText: 'Search your favorite food ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 3, bottom: 3, left: 39, right: 20),
                child: Text.rich(
                  TextSpan(
                    text: "Find ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "5 KM >",
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    "Salads",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Hot Sale")),
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Popularity")),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: productList.map((e) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(map: e),
                          ),
                        );
                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 220,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.favorite_border, size: 20),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("${e["image"]}",
                                    height: 120, width: 160),
                              ),
                              Text(
                                "${e["name"]}",
                                style: TextStyle(fontSize: 18),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "${e["time"]}",
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  SizedBox(height: 15),
                                  Text("${e["rating"]}",
                                      style: TextStyle(fontSize: 11)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // SizedBox(height: 5),
                                  Text("${e["price"]}",
                                      style: TextStyle(fontSize: 18)),
                                  Container(
                                    height: 28,
                                    child: Icon(Icons.add, color: Colors.white),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(15),
                                          topLeft: Radius.circular(15)),
                                    ),
                                  ), //Add icon
                                ],
                              ),
                            ],
                          )),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: productList1.map((e) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(map: e),
                          ),
                        );
                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 220,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.favorite_border, size: 20),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("${e["image"]}",
                                    height: 120, width: 160),
                              ),
                              Text(
                                "${e["name"]}",
                                style: TextStyle(fontSize: 18),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "${e["time"]}",
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  SizedBox(height: 15),
                                  Text("${e["rating"]}",
                                      style: TextStyle(fontSize: 11)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // SizedBox(height: 5),
                                  Text("${e["price"]}",
                                      style: TextStyle(fontSize: 18)),
                                  Container(
                                    height: 28,
                                    child: Icon(Icons.add, color: Colors.white),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(15),
                                          topLeft: Radius.circular(15)),
                                    ),
                                  ), //Add icon
                                ],
                              ),
                            ],
                          )),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
