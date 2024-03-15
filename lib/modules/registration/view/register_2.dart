import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogram_app/app_sizing.dart';
import 'package:photogram_app/app_utils.dart';
import 'package:photogram_app/modules/room/room.dart';



class RegisterNext extends StatefulWidget {
  const RegisterNext({super.key});

  @override
  State<RegisterNext> createState() => _RegisterNextState();
}

class _RegisterNextState extends State<RegisterNext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: AppSizing.screenHeight,
        width: AppSizing.screenWidth,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 104),
              child: Text(
                'Register',
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
               AppUtils.commonButtonFullWidth("SIGN UP", () {
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                  return  const Room();
                })));
              }),
              Padding(
                padding: const EdgeInsets.only(top:16.0),
                child: Container(
                  height: AppSizing.screenSizeonHeight(45),
                  child:  Text(
                      "By signing up, you agree to Photo's Terms of Service and Privacy Policy.",
                      style: GoogleFonts.roboto(fontSize: 13),),
                      
                ),
              ),
            ]
          )
        ),
      )
    );
  }
}