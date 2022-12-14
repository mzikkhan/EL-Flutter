import 'package:flutter/material.dart';
import 'package:my_first_app/dashboard_main.dart';
import 'package:my_first_app/profile_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        dividerColor: Colors.black,
      ),
      routes: {
        ProfilePage.routeName: (context) => ProfilePage(),
      },
    );
  }
}

// Expanded(
//                               child: TextButton(
//                                 child: Text(
//                                   'SEE ALL',
//                                   style: TextStyle(
//                                       color: const Color(0xFF34893C),
//                                       fontSize: 12),
//                                 ),
//                                 onPressed: () => showModalBottomSheet(
//                                     // enableDrag: true,
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.vertical(
//                                       top: Radius.circular(20),
//                                     )),
//                                     context: context,
//                                     builder: (context) => buildSheet()),
//                               ),
//                             ),