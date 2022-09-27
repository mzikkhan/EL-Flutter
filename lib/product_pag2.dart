import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductsPage2 extends StatefulWidget {
  const ProductsPage2({super.key});

  @override
  State<ProductsPage2> createState() => _ProductsPage2State();
}

class _ProductsPage2State extends State<ProductsPage2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          title: Text(
            "Products",
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Onion",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  // padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.all(10),
                                  height: 50,
                                  width: 100,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/onion.png'),
                                    backgroundColor: Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      label:
                                          Center(child: Text('Selling Price')),
                                    ),
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      label:
                                          Center(child: Text('Purchase Price')),
                                    ),
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 30,
                              width: 120,
                              padding: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 30),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Submit',
                                  style: TextStyle(fontSize: 8),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.teal,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Onion",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  // padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.all(10),
                                  height: 50,
                                  width: 100,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/onion.png'),
                                    backgroundColor: Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      label:
                                          Center(child: Text('Selling Price')),
                                    ),
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      label:
                                          Center(child: Text('Purchase Price')),
                                    ),
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 30,
                              width: 120,
                              padding: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 30),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Submit',
                                  style: TextStyle(fontSize: 8),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.teal,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          height: 50,
          width: 150,
          child: FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: () {},
            child: Text(
              'Update All',
            ),
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          ),
        ),
      ),
    );
  }
}
