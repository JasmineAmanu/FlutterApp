import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogram_app/app_sizing.dart';

class ChatsMessage extends StatefulWidget {
  final Map<String, String> userData;
  const ChatsMessage({super.key, required this.userData});

  @override
  State<ChatsMessage> createState() => _ChatsMessageState();
}

class _ChatsMessageState extends State<ChatsMessage> {
    TextEditingController textEditingController = TextEditingController();
  List<Map<String,dynamic>> chatMesaage=[
    {
        "isMe": true,
        "message": "Enjoying a peaceful day at the beach.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": false,
        "message": "Exploring the lush forests and enjoying nature's beauty.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": false,
        "message": "Capturing breathtaking landscapes with a camera.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": true,
        "message": "Relaxing with a good book and a cup of tea.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": false,
        "message": "Exploring new trails and enjoying the fresh air.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": true,
        "message": "Attending a beach bonfire with friends and family.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": false,
        "message": "Exploring bustling city streets and trying new foods.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": false,
        "message": "Admiring beautiful architecture and historical landmarks.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": true,
        "message": "Having a picnic in the park on a sunny day.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": true,
        "message": "Attending a music festival and dancing all night long.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": false,
        "message": "Visiting a zoo and marveling at the diverse wildlife.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": false,
        "message": "Attending a yoga retreat and finding inner peace.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": true,
        "message": "Taking a scenic drive along the coast with friends.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": true,
        "message": "Attending a photography workshop and honing skills.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
     {
        "isMe": true,
        "message": "Having a picnic in the park on a sunny day.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": true,
        "message": "Attending a music festival and dancing all night long.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    {
        "isMe": false,
        "message": "Visiting a zoo and marveling at the diverse wildlife.",
        "profile_url": "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
    },
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Expanded(child: chat()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: TextField(
              controller: textEditingController,
              onChanged: (v) {
                setState(() {});
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        chatMesaage.add(
                          {
                            "isMe": "true",
                            "message": textEditingController.text,
                            "profile_url":
                               "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="
     },
                        );
                        setState(() {});
                        textEditingController.clear();
                      },
                      icon: const Icon(Icons.send)),
                  hintText: "Type Your Message Here"),
            ),
          ),
        ],
      ),

    );
  }

  PreferredSizeWidget appBar(){
    
    return PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        NetworkImage(widget.userData['profile_url']!),
                  ),
                ),
                Expanded(
                  child: Center(
                      child: Text(
                    widget.userData['name']!,
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                )
              ],
            ),
          ));
  }

   Widget chat() {
    return ListView.builder(
      itemCount: chatMesaage.length,
      itemBuilder: (context,index){
        final isMe=chatMesaage[index]['isMe']==true;
        switch(isMe){
          case true:
          return chatFromMe(index);
          default:
          return chatFromUser(index);
          
        }
   });
  }

  Widget chatFromUser(index){
    return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(
        radius: AppSizing.screenSizeonHeight(14),
        backgroundImage: NetworkImage(chatMesaage[index]['profile_url']),
      ),
       const SizedBox(
              width: 16,
            ),
      Flexible(child: Container(
        constraints: BoxConstraints(minHeight: 40,minWidth: MediaQuery.of(context).size.width/4),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.03),
            borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10))
          
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 30),
          child: Text(chatMesaage[index]['message']),
        ),
      )),
       Flexible(flex: 3, child: Container()),
    ],
  
  ),
);
    

  }

  Widget chatFromMe(index){
    return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Flexible(flex: 3, child: Container()),
      CircleAvatar(
        radius: AppSizing.screenSizeonHeight(14),
        backgroundImage: NetworkImage(chatMesaage[index]['profile_url']),
      ),
       const SizedBox(
              width: 16,
            ),
      Flexible(child: Container(
        constraints: BoxConstraints(minHeight: 40,minWidth: MediaQuery.of(context).size.width/4),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.03),
                        borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
          
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 30),
          child: Text(chatMesaage[index]['message']),
        ),
      )),
       
    ],
  
  ),
);
    

  }
 
}
