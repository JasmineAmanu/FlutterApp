import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogram_app/modules/home/view/home.dart';

class HomePage extends StatefulWidget {
  final String imageUrl;
  const HomePage({super.key, required this.imageUrl});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(widget.imageUrl),
            fit: BoxFit.cover)
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10.0),
          child: IconButton(onPressed: (){
          Navigator.of(context).pop(MaterialPageRoute(builder: (context){
          return Home();
          }));
          }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        ),
        const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 10),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        NetworkImage("https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=jH-i5rEcMlrpgSk1-485MLwC8mnzth8PJYYkfgFz2KQ="),
                  ),
                ),
               
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 10),
                  child: Text('Pawel_Czerwinski',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 13),),
                ),
               
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:100.0,vertical: 25),
                  child: Text('@pawel_czerwinski',style: GoogleFonts.roboto(fontSize: 11),),
                ),
        ]
      ),
    );
  }
}