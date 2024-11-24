import 'package:chat_app/data/current_chats.dart';
import 'package:chat_app/data/my_contacts.dart';
import 'package:chat_app/model/chat_message.dart';
import 'package:chat_app/model/user.dart';
import 'package:chat_app/widget/chat_contact.dart';
import 'package:chat_app/widget/popular_contact.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Function openChat;
  const Home({super.key, required this.openChat});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Popular',
                    style: TextStyle(fontSize: 35),
                  ),
                  SizedBox(
                    height: 125.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: _getPopularUsers(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Chats',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  _getChats(),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _newChat(context).then((contact) {
                if (contact != '') {
                  User newUser = User(contact, '');
                  myContactList.add(newUser);
                  myChatConversations[newUser] = [];
                  openChat('');
                }
              });
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: const Color.fromRGBO(7, 94, 84, 1.0),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }

  Future<String> _newChat(BuildContext context) async {
    String contact = '';
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("New Chat Conversation"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Contact',
                ),
                onChanged: (value) {
                  contact = value;
                },
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, contact),
              child: const Text('Cancel'),
            ),
            TextButton(
              child: const Text("OK"),
              onPressed: () => Navigator.pop(context, contact),
            ),
          ],
        );
      },
    );
  }

  List<Widget> _getPopularUsers() {
    List<Widget> popularUsers = [];

    for (int i = 0; i < 8; i++) {
      popularUsers.add(PopularContact(
        imageURL: myContactList[i].imageURL,
        name: myContactList[i].userName.split(' ')[0],
        openChat: openChat,
      ));
    }

    return popularUsers;
  }

  Widget _getChats() {
    List<Widget> currentChats = [];

    for (User sender in myChatConversations.keys.toList().reversed) {
      currentChats.add(
        ChatContact(
            imageURL: sender.imageURL,
            name: sender.userName,
            messagePreview: (myChatConversations[sender]!.isEmpty) ? '' : myChatConversations[sender]!.last.message,
            time: (myChatConversations[sender]!.isEmpty) ? '' : myChatConversations[sender]!.last.sendTime,
            unreadCount: (myChatConversations[sender]!.isEmpty || myChatConversations[sender]!.last.read)
                ? ''
                : '${_getUnreadCount(myChatConversations[sender]!)}',
            openChat: openChat),
      );
    }

    return Column(children: currentChats);
  }

  int _getUnreadCount(List<ChatMessage> chatMessages) {
    int unreadCount = 0;

    for (int i = chatMessages.length - 1; i >= 0; i--) {
      if (chatMessages[i].read) break;
      unreadCount++;
    }

    return unreadCount;
  }
}
