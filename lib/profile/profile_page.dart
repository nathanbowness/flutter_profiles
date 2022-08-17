import 'package:flutter/material.dart';
import 'package:flutter_profiles/model/user.dart';
import 'package:flutter_profiles/profile/profile_numbers_widget.dart';
import 'package:flutter_profiles/profile/profile_user_widget.dart';
import 'package:flutter_profiles/utils/user_preferences.dart';
import 'package:flutter_profiles/widget/appbar_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  final testUser = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      // Listview lets you have multiple widgets one after the other
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 24),
          ProfileWidget(imagePath: testUser.imagePath, onClicked: () {}),
          const SizedBox(height: 24),
          buildName(testUser),
          const SizedBox(height: 12),
          const ProfileNumbersWidget(),
        ],
      ),
    );
  }

  Widget buildName(User user) {
    return Column(
      children: [
        Text(
          user.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 4),
        Text(user.email, style: const TextStyle(color: Colors.grey))
      ],
    );
  }
}
