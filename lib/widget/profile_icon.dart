import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  final String imageURL;
  final String name;
  final double size;
  const ProfileIcon({super.key, required this.imageURL, required this.name, required this.size});

  Widget getAvatar() {
    if (imageURL != '') {
      return CircleAvatar(
        backgroundImage: NetworkImage(imageURL),
        maxRadius: size,
      );
    } else {
      return CircleAvatar(
        backgroundColor: Colors.blue.shade800,
        maxRadius: size,
        child: Text(
          name[0],
          style: const TextStyle(fontSize: 30, color: Colors.white),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return getAvatar();
  }
}
