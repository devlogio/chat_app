import 'package:chat_app/data/current_chats.dart';
import 'package:chat_app/model/chat_message.dart';
import 'package:chat_app/model/user.dart';
import 'package:chat_app/widget/chat_bubble.dart';
import 'package:chat_app/widget/profile_icon.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  final Function back;
  final User user;
  const Chat({super.key, required this.back, required this.user});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  String _newMessage = '';
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 75.0,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            widget.back('home', null);
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: ProfileIcon(user: widget.user, size: 22.0),
            ),
            Text(
              widget.user.userName,
              style: const TextStyle(fontSize: 35),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Divider(
            color: Colors.grey.shade300,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                children: _populateChat(),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 50.0, right: 25.0, left: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: TextField(
                      controller: controller,
                      onChanged: (inputMessage) {
                        _newMessage = inputMessage;
                      },
                      onSubmitted: (inputMessage) {
                        _appendNewMessage();
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        hintText: 'New Chat',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Icon(Icons.send),
                  onTap: () {
                    _appendNewMessage();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _populateChat() {
    List<Widget> chat = [];

    for (ChatMessage chatMessage in myChatConversations[widget.user]!) {
      chatMessage.read = true;
      chat.add(ChatBubble(message: chatMessage.message, sender: chatMessage.sender));
    }

    return chat;
  }

  void _appendNewMessage() {
    if (_newMessage == '') return;

    final now = DateTime.now();
    setState(() {
      myChatConversations[widget.user]!.add(
        ChatMessage(
          sender: null,
          message: _newMessage,
          sendTime: '${now.hour}:${now.minute}',
        ),
      );
    });
    _newMessage = '';
    controller.clear();
  }
}
