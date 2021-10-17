import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  var data = [
    "Fila for Men's",
    "Nike AirJordan",
    "Puma Flyerz",
    "New Balance Rusty"
  ];
  var data2 = ["Fuel Cell Echo", "Rebel", "Acoustic", "Starz"];
  var img = ["Shoe1.jpg", "shoe2.jpg", "shoe3.jpg", "shoe4.jpg"];
  var rate = [
    "\$99.99",
    "\$100.0",
    "\$129.0",
    "\$89.99",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Image.asset("logo.png"),
        ),
        title: Text("moblsport",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30.0,
                ),
              )),
        ],
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return abc(data[index], data2[index], img[index], rate[index]);
          }),
    );
  }
}

Widget abc(String name, String type, String img, String rate) {
  return Card(
    elevation: 5,
    margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
    child: Row(
      children: [
        Container(width: 180, height: 140, child: Image.asset(img)),
        Column(
          children: [
            Text(name,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text(type,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 16.0,
            ),
            Text("Men's",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
              ],
            ),
            Text(rate,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ))
          ],
        )
      ],
    ),
  );
}
