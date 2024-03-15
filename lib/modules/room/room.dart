import 'package:flutter/material.dart';
import 'package:photogram_app/app_sizing.dart';
import 'package:photogram_app/modules/chat/view/chat.dart';
import 'package:photogram_app/modules/create/view/create.dart';
import 'package:photogram_app/modules/home/view/home.dart';
import 'package:photogram_app/modules/profile/view/profile.dart';
import 'package:photogram_app/modules/search/view/search.dart';


class Room extends StatefulWidget {
  const Room({super.key});

  @override
  State<Room> createState() => _RoomState();
}
enum RoomIcons{
home,search,create,chat,profile
}

class _RoomState extends State<Room> {
static RoomIcons currentSelection=RoomIcons.home;

static Map indexToEnum={
0:RoomIcons.home,
1:RoomIcons.search,
2:RoomIcons.create,
3:RoomIcons.chat,
4:RoomIcons.profile
};

static Map enumToIcon={
RoomIcons.home:'assets/icons/new.png',
RoomIcons.search:'assets/icons/search.png',
RoomIcons.chat:'assets/icons/Comment.png',
RoomIcons.profile:'assets/icons/bell.png',

};

static  const Map enumToPage={
RoomIcons.home:Home(),
RoomIcons.search:Search(),
RoomIcons.create:Create(),
RoomIcons.chat:Chat(),
RoomIcons.profile:Profile(),
};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:bottomNavBar(),
        body: enumToPage[currentSelection],
         );
  }

  Widget bottomNavBar(){
    return BottomNavigationBar(
          onTap: (i){
currentSelection=indexToEnum[i];
setState(() {});
          },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
       commonIcon(RoomIcons.home),
       commonIcon(RoomIcons.search),
          createIcon(),
                 commonIcon(RoomIcons.chat),
         commonIcon(RoomIcons.profile)
        ]);
  }
BottomNavigationBarItem commonIcon(RoomIcons roomIcons){
return   BottomNavigationBarItem(
              icon: Image.asset(enumToIcon[roomIcons],
                  color: currentSelection==roomIcons ? Colors.blue : null,
                  height: AppSizing.screenSizeonHeight(40),
                  width: AppSizing.screenSizeonWidth(40)),
              label: '');
  }

  BottomNavigationBarItem createIcon(){
    return   BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Container(
                  height: AppSizing.screenSizeonHeight(40),
                  width: AppSizing.screenSizeonWidth(70),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(colors: [
                        Color(0xffFF00D6),
                        Color(0xfffff4d00),
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              label: 'Create');

  }
}
