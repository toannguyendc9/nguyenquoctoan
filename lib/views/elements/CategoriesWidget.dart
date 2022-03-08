// import 'package:flutter/material.dart';
// import 'package:flutter_getx/controllers/categories_controller.dart';
// import 'package:get/get.dart';

// class CategoriesWidget extends GetView<CategoryController>{
//   @override
//   Widget build(BuildContext context) {
//     return  Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Container(
//                                     width: 70,
//                                     margin: EdgeInsets.symmetric(horizontal: 10),
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         ClipRRect(
//                                           borderRadius: BorderRadius.circular(8.0),
//                                           child: Image.asset(
//                                             controller.items[index].img,
//                                             width: 55,
//                                             height: 55,
//                                           ),
//                                         ),
//                                         SizedBox(height: 5,),
//                                         Text(
//                                           controller.items[index].name,
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                               fontFamily: 'Mulish',
//                                               fontSize: 12,
//                                               fontWeight: FontWeight.w600),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               );
//   }
// }