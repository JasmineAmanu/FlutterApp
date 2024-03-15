import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogram_app/app_sizing.dart';
import 'package:photogram_app/modules/login/view/login.dart';
import 'package:photogram_app/modules/registration/view/register_1.dart';




class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  
  
  @override
  Widget build(BuildContext context) {
   
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: bottomNav(height, width),
       body: screenBody(height, width) );
  }

  
Widget screenBody(height,width){
  return  Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/background.png',
                ),
                fit: BoxFit.fill)),
        child: Stack(
          children:[ 
            title(height, width),
             currentUserStatus()
           ]
        ),
      
      );
   
}
Widget title(height,width){
  return    Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: height / 15,
                    width: width / 15,
                    child: Stack(
                      children: [
                        Image.asset("assets/Union_1.png"),
                        Image.asset("assets/Union.png")
                      ],
                    ),
                  ),
                ),
                Text(
                  "photo",style: GoogleFonts.comfortaa(
                    fontSize: width/10
                  ),
                
                  ),
                
              ],
            ),
          );
      
}
Widget currentUserStatus(){
  return  Positioned(
            bottom:AppSizing.screenSizeonHeight(20) ,
            child: Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: SizedBox(
              child: Row(
                  children: [
                    Container(
                      height: AppSizing.screenSizeonHeight(28),
                      width: AppSizing.screenSizeonWidth(28),
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://petapixel.com/assets/uploads/2022/12/what-is-unsplash.jpg'),
                        fit: BoxFit.fill),
                        shape: BoxShape.circle
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pawel_Czerwinski',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 13),),
                          Text('@pawel_czerwinski',style: GoogleFonts.roboto(fontSize: 11),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        
}

Widget bottomNav(height,width){
    return SizedBox(
        height: height / 9,
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(right:9),
                child: bottomNavButton('LOG IN',true)
              ),
                  bottomNavButton('REGISTER', false)
                ],
          ),
        ),
      );
    
  }

  Widget bottomNavButton(buttonText,isLogin){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  InkWell(
      onTap: (){
        if(isLogin){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
return Login();
          }
          ));
        }
        else{
           Navigator.of(context).push(MaterialPageRoute(builder: (context){
return Register();
          }
          ));
        }
      },
      child: Container(
                  height: height / 18,
                  width: width / 2.25,
                  decoration: BoxDecoration(border: Border.all(),
                  borderRadius: BorderRadius.circular(6),
                  color:isLogin?null: Colors.black),
                   child:  Center(
                    child:Text(
                      buttonText,
                    style:GoogleFonts.roboto(
      fontSize:min(25,width/30),
      //fontWeight: FontWeight.w500,
      color:isLogin?null: Colors.white
      
                    ) ,)
                  ),
                ),
    );
  }

}