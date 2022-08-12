import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  const icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: const BackButton(),
    backgroundColor: Colors.red,
    elevation: 0,
    actions: [IconButton(onPressed: () {}, icon: const Icon(icon))],
  );
}
