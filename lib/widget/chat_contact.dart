import 'package:chat_app/widget/profile_icon.dart';
import 'package:flutter/material.dart';

class ChatContact extends StatelessWidget {
  final String imageURL;
  final String name;
  final String messagePreview;
  final String time;
  final String unreadCount;
  final Function openChat;
  const ChatContact({
    super.key,
    required this.imageURL,
    required this.name,
    required this.messagePreview,
    required this.time,
    required this.unreadCount,
    required this.openChat,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: GestureDetector(
        onTap: () {
          openChat('chat');
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileIcon(imageURL: imageURL, name: name, size: 27),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      (messagePreview.length > 37) ? '${messagePreview.substring(0, 34)}...' : messagePreview,
                      style: (unreadCount != '')
                          ? const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            )
                          : const TextStyle(
                              fontSize: 15.0,
                            ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Text(time),
                (unreadCount != '')
                    ? Padding(
                        padding: const EdgeInsets.only(top: 7.0),
                        child: CircleAvatar(
                          backgroundColor: const Color.fromRGBO(37, 211, 102, 1.0),
                          maxRadius: 12,
                          child: Text(
                            unreadCount,
                            style: const TextStyle(fontSize: 14.0),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
