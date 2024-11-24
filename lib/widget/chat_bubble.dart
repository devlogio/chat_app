import 'package:chat_app/model/user.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final User? sender;
  const ChatBubble({super.key, required this.message, required this.sender});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: (sender == null) ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: (sender == null) ? const Color.fromRGBO(37, 211, 102, 1.0) : Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
            constraints: const BoxConstraints(maxWidth: 300),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                message,
                style: (sender == null)
                    ? const TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      )
                    : const TextStyle(fontSize: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
