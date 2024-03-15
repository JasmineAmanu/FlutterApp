import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogram_app/app_sizing.dart';
import 'package:photogram_app/app_utils.dart';
import 'package:photogram_app/modules/room/room.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 104),
            child: Text(
              'Log In',
              style:
              GoogleFonts.comfortaa(fontSize: 36)
            ),
            ),
            SizedBox(
              height: AppSizing.screenSizeonHeight(32),
            ),
          const Padding(
              padding: EdgeInsets.only(bottom:16.0),
              child: TextField(
            
                decoration: InputDecoration(
                 border: OutlineInputBorder( ),
                  hintText: 'jane@example.com',
                  hintStyle: TextStyle(color: Colors.black),
                ),
              
              ),
            ),
          const Padding(
              padding: EdgeInsets.only(bottom:16.0),
              child: TextField(
                decoration: InputDecoration(
                   border: OutlineInputBorder( ),
                   hintText: '..........',
                    hintStyle: TextStyle(color: Colors.black),
                  
                ),
                
              
              ),
            ),
            AppUtils.commonButtonFullWidth("LOG IN", () {
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                return const Room();
              })));
            })
          ],
        ),
      ),
    );
  }
}