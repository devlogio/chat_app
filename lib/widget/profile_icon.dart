import 'package:chat_app/model/user.dart';
import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  final User user;
  final double size;
  const ProfileIcon({super.key, required this.user, required this.size});

  Widget getAvatar() {
    if (user.imageURL != '') {
      return CircleAvatar(
        backgroundImage: NetworkImage(user.imageURL),
        maxRadius: size,
      );
    } else {
      return CircleAvatar(
        backgroundColor: Colors.blue.shade800,
        maxRadius: size,
        child: Text(
          user.userName[0],
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
