import 'dart:convert';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/categories_controller.dart';
import 'package:flutter_getx/controllers/favorites_controller.dart';
import 'package:flutter_getx/controllers/products_controller.dart';
import 'package:flutter_getx/styles/style.dart';
import 'package:flutter_getx/views/elements/CategoriesWidget.dart';
import 'package:flutter_getx/views/elements/FavoritesWidget.dart';
import 'package:flutter_getx/views/elements/ProductsonSaleWidget.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'my_detail_page.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  final sliders = [
    "img/slider.png",
    "img/slider.png",
    "img/slider.png",
    "img/slider.png"
  ];
  final slider2s = [
    "img/slider2.png",
    "img/slider2.png",
    "img/slider2.png",
    "img/slider2.png"
  ];
  final categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0.2,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xff333333),
          ),
          iconSize: 25,
          onPressed: () {
            Get.back();
          },
        ),
        title: Container(
          height: 35,
          width: 220,
          decoration: BoxDecoration(
              color: Color(0xffF4F4F4), borderRadius: BorderRadius.circular(3)),
          child: Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 20,
                  color: Color(0xff888888),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Tìm kiếm',
                  style: TextAppStyle().text4Grey(),
                )
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Stack(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Color(0xff333333),
                      size: 30,
                    ),
                    Positioned(
                        right: 0,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: Color(0xffFF4921),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text("1",
                                style: TextAppStyle().textSmallWhite()),
                          ),
                        ))
                  ],
                ),
                SizedBox(width: 15),
                Stack(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Color(0xff333333),
                      size: 30,
                    ),
                    Positioned(
                        right: 0,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: Color(0xffFF4921),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text("2",
                                style: TextAppStyle().textSmallWhite()),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                //sliders
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: CarouselSlider.builder(
                    itemCount: sliders.length,
                    options: CarouselOptions(
                        height: 160, autoPlay: true, enlargeCenterPage: true),
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = sliders[index];
                      return buildSlider(urlImage, index);
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //danhmuc
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Danh mục',
                        style: TextAppStyle().text1(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: GetX<CategoryController>(builder: (controller) {
                          return ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.items.length,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 70,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff888888)
                                                    .withOpacity(0.25),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: Offset(0,
                                                    5), // changes position of shadow
                                              )
                                            ],
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              controller.items[index].img,
                                              width: 55,
                                              height: 55,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          controller.items[index].name,
                                          textAlign: TextAlign.center,
                                          style: TextAppStyle().text4Black(),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //sanphamdangsale
                ProductsonSaleWidget(),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: CarouselSlider.builder(
                    itemCount: slider2s.length,
                    options: CarouselOptions(
                        height: 160, autoPlay: true, enlargeCenterPage: true),
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = slider2s[index];
                      return buildSlider(urlImage, index);
                    },
                  ),
                ),
                SizedBox(height: 20),
                //sanphamyeuthich
                FavoritesWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSlider(String urlImage, int index) {
    return Container(
      child: Image.asset(
        urlImage,
      ),
    );
  }
}
