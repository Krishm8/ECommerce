import 'package:flutter/material.dart';
import 'package:krish/main.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/");
          },
          child: Icon(
            Icons.chevron_left,
            size: 40,
          ),
        ),
        title: Align(
          alignment: Alignment(-0.2, 1),
          child: Text(
            "Cart",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: cartList.map((e) {
                    return Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 100,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10, left: 7),
                            child: Image.asset(
                              e["img"],
                              height: 100,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Text(
                                  e["name"],
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "\$${e["price"]}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  cartList.remove(e);
                                  setState(() {});
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.delete,
                                    size: 30,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, top: 10),
                                child: Row(
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          i--;
                                          if (i == 0) cartList.remove(e);
                                          setState(() {});
                                        },
                                        child: Icon(Icons.remove_circle)),
                                    Text(
                                      " $i ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        i++;
                                        e["price"] + e["price"];
                                        setState(() {});
                                      },
                                      child: Icon(Icons.add_circle),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                        Text(
                          "0",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 3),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      children: [
                        Text(
                          "Discount (10%)",
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                        Text(
                          "0",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 3),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      children: [
                        Text(
                          "Grand Total",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Place Your Order",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
