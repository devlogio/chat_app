import 'package:chat_app/widget/profile_icon.dart';
import 'package:flutter/material.dart';

class PopularContact extends StatelessWidget {
  final String imageURL;
  final String name;
  final Function openChat;
  const PopularContact({
    super.key,
    required this.imageURL,
    required this.name,
    required this.openChat,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: GestureDetector(
        onTap: () {
          openChat('chat');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileIcon(imageURL: imageURL, name: name, size: 32),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(name),
            ),
          ],
        ),
      ),
    );
  }
}
