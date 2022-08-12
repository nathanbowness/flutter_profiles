import 'package:flutter/material.dart';
import 'package:flutter_profiles/profile/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Profile Demo',
      theme: ThemeData(
        primaryColor: Colors.blue.shade100,
        dividerColor: Colors.black,
      ),
      home: const ProfilePage(),
    );
  }
}
