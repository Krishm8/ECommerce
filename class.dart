import 'package:flutter/material.dart';
import 'package:krish/main.dart';

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  Map? pdetail;

  @override
  Widget build(BuildContext context) {
    Map? pdetail = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(pdetail["img"]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Image.asset(pdetail["img1"]),
                    ),
                    Image.asset(pdetail["img2"]),
                    Image.asset(pdetail["img3"]),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${pdetail["name"]}",
                            style: TextStyle(fontSize: 25),
                          ),
                          Spacer(),
                          Text("\$${pdetail["price"]}",
                              style: TextStyle(fontSize: 25)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.star,color: Colors.orangeAccent,),
                          Icon(Icons.star,color: Colors.orangeAccent,),
                          Icon(Icons.star,color: Colors.orangeAccent,),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 235, top: 10),
                        child: Text(
                          "Available Sizes",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "US 6",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 32, top: 20),
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "US 7",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 32, top: 20),
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "US 8",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 32, top: 20),
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "US 9",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 260, top: 20),
                        child: Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 8),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.shopping_cart,
          size: 30,
        ),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        onPressed: () {
          if (pdetail != null) {
            cartList.add(pdetail);
          }
         Navigator.pushNamed(context, "cart_page", arguments: pdetail);
        },
      ),
    );
  }
}


