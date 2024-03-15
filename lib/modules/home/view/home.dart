import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogram_app/app_sizing.dart';
import 'package:photogram_app/modules/home/view/home_page.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

   int multipleImage = 1;
  static const List<String> images = [
    'https://plus.unsplash.com/premium_photo-1710193817300-a2edf01839e8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1707423948446-95e2604d4f8d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1707080193931-187cb67d8a51?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1708923262250-09c61f1bb6a7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1707009504312-53faa6c1cecd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1709927628742-c3da31d7707f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzM3x8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1710192230031-f84519765f81?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1710092151905-a1bdb0cfb071?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNXx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1710319412580-ee88720571cb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1710319412580-ee88720571cb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1710267558694-3ea9cd04f984?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1707327956851-30a531b70cda?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw1MXx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1710125888693-deb4fd7516b5?q=80&w=1904&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1676928726052-474b63ddddfb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1N3x8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1710183327912-b8c95b5e1442?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' ];
  static List<String> crouselSliderImages = [
   'https://images.unsplash.com/photo-1710228736245-5cb0efd30657?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OHx8fGVufDB8fHx8fA%3D%3D',
   'https://images.unsplash.com/photo-1709796590657-7d54c981e61f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2MHx8fGVufDB8fHx8fA%3D%3D',
   'https://images.unsplash.com/photo-1707343846292-0c11438d145f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2MXx8fGVufDB8fHx8fA%3D%3D',
   'https://images.unsplash.com/photo-1710092662335-065cdbfb9781?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3M3x8fGVufDB8fHx8fA%3D%3D',
   'https://images.unsplash.com/photo-1709593491098-200afffca0a5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3MHx8fGVufDB8fHx8fA%3D%3D'
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            titleSubTitle(),
            crouselSlider(),
            currentUserStatus(),
            SizedBox(
              height: AppSizing.screenSizeonHeight(24),
            ),
            Text(
              "Browse all",
              style: GoogleFonts.roboto(
                  fontSize: min(20, AppSizing.screenSizeonWidth(13)),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: AppSizing.screenSizeonHeight(12),
            ),
            MasonryGridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemCount: (images.length * multipleImage),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
return HomePage(imageUrl:images[index % ((images.length - 1))] );
                    }));
                  },
                  child: Image.network(images[index % ((images.length - 1))]));
              },
            ),
            const SizedBox(
              height: 14,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  multipleImage++;
                });
              },
              child: Container(
                height: AppSizing.screenSizeonHeight(40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                  child: Text(
                    "See More",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: min(13, AppSizing.screenSizeonWidth(20)),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget titleSubTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppSizing.screenSizeonHeight(20),
        ),
        Text(
          "Discover",
          style: GoogleFonts.comfortaa(
              fontSize: min(45, AppSizing.screenSizeonWidth(36))),
        ),
        SizedBox(
          height: AppSizing.screenSizeonHeight(10),
        ),
        Text(
          "What’s new today".toUpperCase(),
          style: GoogleFonts.roboto(
              fontSize: min(
                20,
                AppSizing.screenSizeonWidth(13),
              ),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget currentUserStatus() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
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
    );
  }

  Widget crouselSlider() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        height: AppSizing.screenSizeonHeight(343),
        width: double.infinity,
        child: CarouselSlider(
          items: crouselSliderImages
              .map(
                (e) => LayoutBuilder(
                  builder: (context, constraints) {
                    double screenWidth = constraints.maxWidth;
                    double screenHeight = AppSizing.screenSizeonHeight(343);

                    double imageWidth =
                        screenWidth < 394 ? screenWidth : double.infinity;
                    double imageHeight =
                        screenWidth < 394 ? screenHeight * 0.6 : screenHeight;

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Image.network(
                              e,
                              fit: BoxFit.cover,
                              width: imageWidth,
                              height: imageHeight,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
              .toList(),
          options: CarouselOptions(viewportFraction: 1),
        ),
      ),
    );
  }
}