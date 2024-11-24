import 'package:chat_app/data/my_contacts.dart';
import 'package:chat_app/model/chat_message.dart';
import 'package:chat_app/model/user.dart';

Map<User, List<ChatMessage>> myChatConversations = {
  myContactList[10]: [
    ChatMessage(sender: myContactList[10], message: 'I ❤️ Flutter', sendTime: '02:09', read: true),
  ],
  myContactList[9]: [
    ChatMessage(sender: myContactList[9], message: 'iPhone vs. Android', sendTime: '02:09', read: true),
  ],
  myContactList[8]: [
    ChatMessage(sender: myContactList[8], message: 'Please clean up this mess', sendTime: '02:09', read: true),
  ],
  myContactList[7]: [
    ChatMessage(sender: myContactList[7], message: 'Thank you', sendTime: '02:09', read: true),
  ],
  myContactList[6]: [
    ChatMessage(sender: myContactList[6], message: 'See you on the weekend', sendTime: '02:09', read: true),
  ],
  myContactList[5]: [
    ChatMessage(sender: myContactList[4], message: '👍', sendTime: '02:09', read: true),
  ],
  myContactList[4]: [
    ChatMessage(sender: myContactList[5], message: 'Hi All', sendTime: '02:09'),
    ChatMessage(sender: myContactList[5], message: 'Please subscribe', sendTime: '02:09'),
  ],
  myContactList[3]: [
    ChatMessage(sender: myContactList[3], message: 'Do you want to join the party tomorrow?', sendTime: '02:09'),
  ],
  myContactList[2]: [
    ChatMessage(sender: myContactList[2], message: 'What a game', sendTime: '02:09', read: true),
  ],
  myContactList[1]: [
    ChatMessage(sender: myContactList[1], message: 'Hi Asal', sendTime: '02:09'),
    ChatMessage(sender: myContactList[1], message: 'How do you by "nice" stuff?', sendTime: '02:10'),
    ChatMessage(
        sender: myContactList[1], message: 'Please help me find a good monitor for the design', sendTime: '02:11'),
  ],
};
