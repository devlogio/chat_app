import 'package:chat_app/model/user.dart';

class ChatMessage {
  User sender;
  String message;
  String sendTime;
  bool read;

  ChatMessage({required this.sender, required this.message, required this.sendTime, this.read = false});
}
