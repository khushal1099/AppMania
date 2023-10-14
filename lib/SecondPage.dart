import 'package:appmania/cart.dart';
import 'package:appmania/util.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  Map map={};

  SecondPage({super.key, required this.map});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var size = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF7CD965),
        title: Stack(
          children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 15,
                      height: 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 5,
                      height: 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 5,
                      height: 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        actions: [
          InkWell(
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
              child: Icon(Icons.shopping_cart)),
          Padding(padding: EdgeInsets.all(4)),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    color: Color(0xFF7CD965),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: double.infinity,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 460,
                          padding: EdgeInsets.only(top: 155, left: 20),
                          child: Text(
                            "${widget.map["name"]}",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w500),
                          ),
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 70, top: 200),
                          child: Text.rich(
                            TextSpan(
                              text:
                                  "Fresh Avocado,shrimps salad with lettuce green mix,\ncherry tomatoes,herbs and olive oil,lemon dressing.\nhealthy food....",
                              style: TextStyle(color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: "Read More",
                                  style: TextStyle(
                                      color: Color(0xFFA4E593),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Icon(Icons.star,
                                      color: Colors.orangeAccent),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("\t4.5",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 10, left: 75),
                                    child: Icon(
                                        Icons.local_fire_department_sharp,
                                        color: Colors.orange)),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 5),
                                  child: Text(
                                    "\t100 Kcal",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 75),
                                  child: Icon(Icons.alarm, color: Colors.red),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 5),
                                  child: Text("5-10 Min",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 280, top: 10),
                          child: Text(
                            "Ingradients",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 80, left: 160),
                      width: 120,
                      height: 50,
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (size > 0) {
                                        size = size - 1;
                                      }
                                      print(size);
                                    });
                                  },
                                  child: Icon(Icons.remove,
                                      color: Colors.white, size: 28)),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "$size",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        size = size + 1;
                                        print(size);
                                      });
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 10),
            child: Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 30),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("images/k1.jpg", fit: BoxFit.cover),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300]),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 30),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("images/k2.jpg", fit: BoxFit.cover),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300]),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 30),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("images/k3.jpg", fit: BoxFit.cover),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300]),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 30),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("images/k4.jpg", fit: BoxFit.cover),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300]),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 30),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("images/k5.jpg", fit: BoxFit.cover),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(onTap: (){
                      cartlist.add(widget.map);
                      print(cartlist);
                      setState(() {});
                    },
                      child: Container(
                        width: 416,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Container(
                height: 234,
                width: 234,
                clipBehavior: Clip.antiAlias,
                child: Image.asset("${widget.map["image"]}"),
                decoration: BoxDecoration(
                    color: Color(0xD6DAE2FF),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 10,
                          color: Color(0xFF7CD965),
                          blurRadius: 60)
                    ])),
          ),
        ],
      ),
    );
  }
}
