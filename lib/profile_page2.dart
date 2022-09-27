import 'package:flutter/material.dart';
import 'package:my_first_app/appbar_widget.dart';
import 'package:my_first_app/button_widget.dart';
import 'package:my_first_app/numbers_widget.dart';
import 'package:my_first_app/profile_widget.dart';

class ProfilePage2 extends StatefulWidget {
  static const String routeName = "/profile2";

  @override
  State<ProfilePage2> createState() => _ProfilePage2State();
}

class _ProfilePage2State extends State<ProfilePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath:
                "https://images.unsplash.com/photo-1663167289057-a07f174a0ed7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
            onClicked: () async {},
          ),
          const SizedBox(
            height: 30,
          ),
          buildName(),
          Divider(
            thickness: 0.8,
            color: Colors.black12,
            indent: 50,
            endIndent: 50,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(child: buildEditProfileButton()),
          NumbersWidget(),
          const SizedBox(
            height: 30,
          ),
          buildContact(),
          Center(child: LogoutButton()),
        ],
      ),
    );
  }

  Widget buildName() => Column(
        children: [
          Center(
            child: Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              "seller",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      );

  Widget buildEditProfileButton() => TextButton.icon(
        onPressed: () {},
        label: Text(
          "Edit profile",
          style: TextStyle(fontSize: 12),
        ),
        icon: Icon(
          Icons.edit,
          size: 15,
        ),
      );

  Widget LogoutButton() => ButtonWidget(
        text: 'Logout',
        onClicked: () {},
      );

  Widget buildContact() => Container(
        // color: Colors.green,
        child: Column(
          // padding: const EdgeInsets.all(0),
          children: <Widget>[
            ListTile(
              leading:
                  Icon(Icons.phone, color: Color.fromARGB(255, 77, 207, 81)),
              title: Text(
                "Mobile",
                style: TextStyle(color: Color.fromARGB(255, 77, 207, 81)),
              ),
              subtitle: Text("0171xxxxx"),
            ),
            ListTile(
              leading:
                  Icon(Icons.email, color: Color.fromARGB(255, 77, 207, 81)),
              title: Text(
                "Email",
                style: TextStyle(color: Color.fromARGB(255, 77, 207, 81)),
              ),
              subtitle: Text("example@gmail.com"),
            ),
            ListTile(
              leading:
                  Icon(Icons.home, color: Color.fromARGB(255, 77, 207, 81)),
              title: Text(
                "Address",
                style: TextStyle(color: Color.fromARGB(255, 77, 207, 81)),
              ),
              subtitle: Text("address"),
            ),
          ],
        ),
      );
}
