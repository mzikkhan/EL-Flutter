// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:my_first_app/appbar_widget.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/profile";

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                // padding: EdgeInsets.symmetric(vertical: 100),
                child: Card(
                    elevation: 0,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/ZaedProPic.jpg"),
                                backgroundColor: const Color(0xFF362626),
                                radius: 47,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'My Name',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '01XXXXXXXXX',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Distributor',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    )),
                height: 147,
                width: 388,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                // padding: EdgeInsets.symmetric(vertical: 100),
                child: Card(
                  elevation: 0,
                  color: Colors.white,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  'All Bhangaries',
                                  style: TextStyle(fontSize: 15),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 152),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1.0,
                            crossAxisSpacing: 0.0,
                            mainAxisSpacing: 5,
                            mainAxisExtent: 100,
                          ),
                          children: [
                            for (int i = 0; i < 5; i++)
                              Container(
                                child: Container(
                                  height: 94,
                                  width: 94,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Icon(
                                              Icons.person,
                                              color: Colors.yellow,
                                            ),
                                          ),
                                          Text(
                                            'Bhangari 1',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Icon(
                                            Icons.call,
                                            color: Colors.green,
                                          ),
                                        ],
                                      ),
                                    ),
                                    color: const Color(0xFF3D403E),
                                  ),
                                ),
                              ),
                            Expanded(
                              child: TextButton(
                                child: Text(
                                  'SEE ALL',
                                  style: TextStyle(
                                      color: const Color(0xFF34893C),
                                      fontSize: 12),
                                ),
                                onPressed: () => showModalBottomSheet(
                                    // enableDrag: true,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20),
                                    )),
                                    context: context,
                                    builder: (context) => buildSheet()),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                height: 270,
                width: 422,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Card(
                  elevation: 0,
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 55,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.monetization_on,
                            size: 37.0,
                            color: const Color(0xFF3D403E),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'SET PRICE',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            size: 37.0,
                            color: const Color(0xFF3D403E),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'SHOP',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 37.0,
                            color: const Color(0xFF3D403E),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'AGENT',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                height: 150,
                width: 422,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSheet() => Container(
        padding: EdgeInsets.all(6),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 130,
          ),
          children: [
            for (int i = 0; i < 10; i++)
              Container(
                child: Container(
                  height: 94,
                  width: 94,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Icon(
                              Icons.person,
                              color: Colors.yellow,
                            ),
                          ),
                          Text(
                            'Bhangari 1',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                    color: const Color(0xFF3D403E),
                  ),
                ),
              ),
          ],
        ),
      );
}
