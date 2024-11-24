import 'package:chat_app/model/user.dart';
import 'package:chat_app/widget/profile_icon.dart';
import 'package:flutter/material.dart';

class PopularContact extends StatelessWidget {
  final User user;
  final Function openChat;
  const PopularContact({
    super.key,
    required this.user,
    required this.openChat,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: GestureDetector(
        onTap: () {
          openChat('chat', user);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileIcon(user: user, size: 32),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(user.userName.split(' ')[0]),
            ),
          ],
        ),
      ),
    );
  }
}
