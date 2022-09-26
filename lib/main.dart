// ignore_for_file: sort_child_properties_last, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Responsive Sizer Example',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // ignore: prefer_const_constructors
          home: Home(),
        );
      },
      maxTabletWidth: 900, // Optional
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:
            Colors.red, //our palette goes here by tapping into the class
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(9.h),
          child: AppBar(
            shape:
                Border(bottom: BorderSide(color: Colors.black, width: 0.1.w)),
            elevation: 0,
            backgroundColor: Colors.white,
            title: Padding(
              padding: EdgeInsets.only(top: 12.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Image.asset(
                    'assets/p1.png',
                    fit: BoxFit.contain,
                    width: 50.sp,
                    height: 30.sp,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    // ignore: prefer_const_constructors
                    child: Icon(
                      Icons.menu,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 4.w,
              ),
              const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 18, 238, 227),
                radius: 100,
              ),
              SizedBox(height: 2.w),
              Text(
                'Chill Hit',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0.sp),
              ),
              SizedBox(height: 2.h),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.play_arrow,
                      size: 24.0.sp,
                    ),
                    Text('Listen on Deezer'), // <-- Text
                    SizedBox(
                      width: 5.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 2.w,
                height: 2.h,
              ),
              SizedBox(
                child: Text(
                  '''Only the greatest Hits of the moment to chill out it''',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                width: 2.w,
                height: 2.h,
              ),
              SizedBox(
                  child: Row(
                children: [
                  Text(
                    'By',
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                  SizedBox(width: 2.w),
                  Text('Fabio - Deezer Pop Editor',
                      style: TextStyle(fontSize: 14.sp)),
                  SizedBox(width: 2.w),
                  Text(
                    '60 tracks 3 h 19 min',
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
