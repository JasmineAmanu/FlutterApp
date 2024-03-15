import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogram_app/app_sizing.dart';
import 'package:photogram_app/modules/chat/view/chat_message.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Map<String, String>> chatUsers = [
    {
      "name": "Alice",
      "message": "Enjoying a peaceful day at the beach.",
      "profile_url":
          "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
      "name": "Bob",
      "message": "Exploring the wilderness and loving it!",
      "profile_url":
          "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
      "name": "Charlie",
      "message": "Just finished climbing a challenging mountain!",
      "profile_url":
          "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
      "name": "David",
      "message": "Celebrating a successful hike with friends.",
      "profile_url":
          "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
      "name": "Emma",
      "message": "Feeling grateful for moments like these.",
      "profile_url":
          "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
      "name": "Frank",
      "message": "Admiring the beauty of nature all around.",
      "profile_url":
          "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
      "name": "Grace",
      "message": "Taking a moment to breathe and appreciate life.",
      "profile_url":
          "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
      "name": "Henry",
      "message": "Hiking through the forest, feeling alive!",
      "profile_url":
          "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
      "name": "Isabella",
      "message": "Feeling on top of the world!",
      "profile_url":
          "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
      "name": "Jack",
      "message": "Enjoying a cozy evening by the fireplace.",
      "profile_url":
          "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: chatUsers.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ChatsMessage(
                            userData: chatUsers[index] as Map<String, String>);
                      }));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: AppSizing.screenSizeonHeight(32),
                          backgroundImage:
                              NetworkImage(chatUsers[index]['profile_url']!),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chatUsers[index]['name']!,
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              Text(
                                chatUsers[index]['message']!,
                                style: GoogleFonts.roboto(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            );
          }),
    );
  }
}
