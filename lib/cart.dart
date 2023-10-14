import 'package:appmania/util.dart';
import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  var qty = 1;
  var sub = 0;
  var del = 0;
  double total = 0;

  // var del = 3.50;

  @override
  Widget build(BuildContext context) {
    // var total = sub + del;
    del=0;
    cartlist.forEach((element) {
      int p = element["del"] * element["qty"];
      print("");
      del = del + p;
    });
    sub = 0;
    cartlist.forEach((element) {
      int p = element["price"] * element["qty"];
      print("");
      sub = sub + p;
    });
    total = 0;
    cartlist.forEach((element) {
      num p = sub + element["del"];
      print("");
      total = total + p;
    });
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.close,
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Cart"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(child: Image.asset("images/background.jpeg")),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 250),
                    width: 430,
                    height: 1000,
                    decoration: const BoxDecoration(
                        color: Colors.white38,
                        borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, -8),
                              blurRadius: 10),
                        ]),
                    child: Column(
                      children: [
                        Column(
                          children: cartlist.map((e) {
                            return Column(
                              children: [
                                Container(
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Image.asset("${e["image"]}",
                                                fit: BoxFit.cover),
                                            clipBehavior: Clip.antiAlias,
                                            margin:
                                            const EdgeInsets.only(left: 20),
                                            height: 60,
                                            width: 60,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25, left: 10),
                                                child: Text("${e["name"]}",
                                                    style: const TextStyle(
                                                        fontSize: 20)),
                                              ),
                                              const SizedBox(height: 10),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5, left: 1),
                                                child: Text(
                                                    "\t\t\t\t\t\$${e["price"]}",
                                                    style: const TextStyle(
                                                        fontSize: 20)),
                                              ),
                                            ],
                                          ),
                                          Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5,right: 10),
                                                child: Container(
                                                  child: Row(
                                                    children: [
                                                      SizedBox(width: 20),
                                                      Container(
                                                        width: 30,
                                                        height: 30,
                                                        child: InkWell(
                                                            onTap: () {
                                                              if (qty == 0) {
                                                                cartlist.remove(e);
                                                              } else {
                                                                e["qty"] = qty;
                                                                qty = qty - 1;
                                                              }
                                                              setState(() {});
                                                            },
                                                            child: Icon(
                                                                Icons.remove,
                                                                color: Colors
                                                                    .white)),
                                                        decoration:
                                                        const BoxDecoration(
                                                          shape:
                                                          BoxShape.circle,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      const SizedBox(width: 10),
                                                      Text(
                                                          "${e["qty".toString()]}",
                                                          style:
                                                          const TextStyle(
                                                              fontSize:
                                                              23)),
                                                      const SizedBox(width: 10),
                                                      Container(
                                                        width: 30,
                                                        height: 30,
                                                        child: InkWell(
                                                            onTap: () {
                                                              e["qty"] = qty;
                                                              qty = qty + 1;
                                                              setState(() {});
                                                            },
                                                            child: Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .white)),
                                                        decoration:
                                                        const BoxDecoration(
                                                          shape:
                                                          BoxShape.circle,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 30, top: 50),
                                                  child: Text(
                                                    "\t\t\t\t\$${e["price"] * e["qty"]}",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.grey),
                                                  ))
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  height: 100,
                                  width: 410,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                        Stack(children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 15, left: 20),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  //color: Colors.white, shape: BoxShape.circle
                                ),
                                child: Image.asset(
                                  "images/coupon.png",
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 13),
                                child: Text(
                                  'promo code',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.grey),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 80,
                                margin: EdgeInsets.only(left: 50, top: 15),
                                child: Center(
                                  child: Text(
                                    'Apply',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10, color: Colors.green)
                                    ]),
                              ),
                            ],
                          )
                        ]),
                        SizedBox(height: 5),
                        Stack(children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            height: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30, left: 30),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey, width: 1))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 100),
                                  child: Text(
                                    'Subtotal',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 100, left: 20),
                                  child: Text("\$$sub",
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                            EdgeInsets.only(right: 30, left: 30, top: 43),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey, width: 1))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 100),
                                  child: Text(
                                    'Delivery',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 100, left: 20),
                                  child: Text("\$$del",
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                            EdgeInsets.only(right: 30, left: 30, top: 80),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey, width: 1))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 100),
                                  child: Text(
                                    'Total',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 100, left: 20),
                                  child: Text("\$$total",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 300,
                            margin: EdgeInsets.only(left: 50, top: 250),
                            child: Center(
                              child: Text(
                                'CHECKOUT',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(blurRadius: 10, color: Colors.green)
                                ]),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}