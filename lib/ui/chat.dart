import 'package:chat_app/widget/profile_icon.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final Function back;
  const Chat({super.key, required this.back});

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
            back('home');
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: ProfileIcon(imageURL: '', name: 'Eric Porter', size: 22.0),
            ),
            Text(
              'Eric Porter',
              style: TextStyle(fontSize: 35),
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
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          constraints: BoxConstraints(maxWidth: 300),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Hi, Asal',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          constraints: BoxConstraints(maxWidth: 300),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'How do you by "nice" stuff?',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          constraints: BoxConstraints(maxWidth: 300),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Please help me find a good monitor for the design',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(37, 211, 102, 1.0),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          constraints: BoxConstraints(maxWidth: 300),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Hi, Zaire',
                              style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(37, 211, 102, 1.0),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          constraints: BoxConstraints(maxWidth: 300),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'I usually by directly from the shop to reduce the risk of damaged travel, and prevent any damage',
                              style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 50.0, right: 25.0, left: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
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
                  Icon(Icons.send)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
