import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget(
      {Key? key, required this.imagePath, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Stack lets you have multiple widgets on top of eachother
    return Center(
        child: Stack(
      children: [
        buildProfileImage(),
        // Widget used to position widgets over others in the stack
        Positioned(bottom: 0, right: 4, child: buildEditIcon(Colors.blue)),
      ],
    ));
  }

  Widget buildProfileImage() {
    final image = NetworkImage(imagePath);
    return ClipOval(
        child: Material(
            color: Colors.transparent,
            child: Ink.image(
                image: image,
                fit: BoxFit.cover,
                width: 256,
                height: 256,
                child: InkWell(
                  onTap: onClicked,
                ))));
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: 40,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
