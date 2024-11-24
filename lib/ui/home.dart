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
                      children: [
                        PopularContact(
                          name: 'Eric',
                          imageURL: '',
                          openChat: openChat,
                        ),
                        PopularContact(
                          name: 'Terry',
                          imageURL: 'https://cdn.pixabay.com/photo/2022/07/24/11/35/women-7341444_1280.jpg',
                          openChat: openChat,
                        ),
                        PopularContact(
                          name: 'Craig',
                          imageURL: 'https://cdn.pixabay.com/photo/2023/08/29/20/00/dahlia-8222052_1280.jpg',
                          openChat: openChat,
                        ),
                        PopularContact(
                          name: 'Roger',
                          imageURL: 'https://cdn.pixabay.com/photo/2022/01/13/00/08/austria-6934184_1280.jpg',
                          openChat: openChat,
                        ),
                        PopularContact(
                          name: 'Nolan',
                          imageURL: 'https://cdn.pixabay.com/photo/2024/11/02/17/29/city-9169729_1280.jpg',
                          openChat: openChat,
                        ),
                        PopularContact(
                          name: 'John',
                          imageURL: 'https://cdn.pixabay.com/photo/2024/02/24/07/24/stilt-8593487_1280.jpg',
                          openChat: openChat,
                        ),
                        PopularContact(
                          name: 'Amber',
                          imageURL: 'https://cdn.pixabay.com/photo/2024/10/12/17/15/flowers-9115519_1280.jpg',
                          openChat: openChat,
                        ),
                        PopularContact(
                          name: 'Tim',
                          imageURL: 'https://cdn.pixabay.com/photo/2024/09/19/14/17/bumblebee-9058915_1280.jpg',
                          openChat: openChat,
                        ),
                      ],
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
                  ChatContact(
                    imageURL: '',
                    name: 'Eric Porter',
                    messagePreview: 'Please help me find a good monitor for my desktop',
                    time: '02:11',
                    unreadCount: '2',
                    openChat: openChat,
                  ),
                  ChatContact(
                    imageURL: 'https://cdn.pixabay.com/photo/2022/07/24/11/35/women-7341444_1280.jpg',
                    name: 'Terry Dias',
                    messagePreview: 'What a game',
                    time: '02:11',
                    unreadCount: '',
                    openChat: openChat,
                  ),
                  ChatContact(
                    imageURL: 'https://cdn.pixabay.com/photo/2023/08/29/20/00/dahlia-8222052_1280.jpg',
                    name: 'Craig Madsen',
                    messagePreview: 'Can you get dinner on the way home?',
                    time: '02:11',
                    unreadCount: '1',
                    openChat: openChat,
                  ),
                  ChatContact(
                    imageURL: 'https://cdn.pixabay.com/photo/2022/01/13/00/08/austria-6934184_1280.jpg',
                    name: 'Roger Dias',
                    messagePreview: 'Do you want to join the party tomorrow?',
                    time: '02:11',
                    unreadCount: '3',
                    openChat: openChat,
                  ),
                  ChatContact(
                    imageURL: 'https://cdn.pixabay.com/photo/2024/11/02/17/29/city-9169729_1280.jpg',
                    name: 'Nolan Curtis',
                    messagePreview: '👍',
                    time: '02:11',
                    unreadCount: '',
                    openChat: openChat,
                  ),
                  ChatContact(
                    imageURL: 'https://cdn.pixabay.com/photo/2024/02/24/07/24/stilt-8593487_1280.jpg',
                    name: 'John Doe',
                    messagePreview: 'Please help me find a good monitor for my desktop',
                    time: '02:11',
                    unreadCount: '',
                    openChat: openChat,
                  ),
                  ChatContact(
                    imageURL: 'https://cdn.pixabay.com/photo/2024/10/12/17/15/flowers-9115519_1280.jpg',
                    name: 'Amber Lock',
                    messagePreview: 'See you on the weekend',
                    time: '02:11',
                    unreadCount: '',
                    openChat: openChat,
                  ),
                  ChatContact(
                    imageURL: 'https://cdn.pixabay.com/photo/2024/09/19/14/17/bumblebee-9058915_1280.jpg',
                    name: 'Tim Book',
                    messagePreview: 'Thank you',
                    time: '02:11',
                    unreadCount: '',
                    openChat: openChat,
                  ),
                  ChatContact(
                    imageURL: 'https://cdn.pixabay.com/photo/2022/05/12/18/03/flower-7192017_1280.jpg',
                    name: 'Angel Curtis',
                    messagePreview: 'Please clean up this mess',
                    time: '02:11',
                    unreadCount: '',
                    openChat: openChat,
                  ),
                  ChatContact(
                    imageURL: 'https://cdn.pixabay.com/photo/2024/07/23/18/37/wasp-8916137_1280.jpg',
                    name: 'Zaire Dorwart',
                    messagePreview: 'iPhone vs. Android',
                    time: '02:11',
                    unreadCount: '',
                    openChat: openChat,
                  ),
                  ChatContact(
                    imageURL: 'https://cdn.pixabay.com/photo/2023/03/28/09/29/tulip-7882705_1280.jpg',
                    name: 'Kelas Malam',
                    messagePreview: 'I ❤️ Flutter',
                    time: '02:11',
                    unreadCount: '',
                    openChat: openChat,
                  ),
                  ChatContact(
                    imageURL: 'https://cdn.pixabay.com/photo/2023/06/05/08/49/sea-8041734_1280.jpg',
                    name: 'Jocelyn Gouse',
                    messagePreview: 'Please subscribe',
                    time: '02:11',
                    unreadCount: '',
                    openChat: openChat,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: Color.fromRGBO(7, 94, 84, 1.0),
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
}
