import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/content_page.dart';
import 'views/my_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=>ContentPage()),
        // GetPage(name: "/details", page: ()=>DetailPage(details: null,)),
      ],
      home: ContentPage(),
    );
  }
}
