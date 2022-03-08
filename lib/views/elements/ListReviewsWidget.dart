import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/reviews_controller.dart';
import 'package:flutter_getx/styles/style.dart';
import 'package:get/get.dart';

class ListReviewsWidget extends StatefulWidget {
  const ListReviewsWidget({Key? key}) : super(key: key);

  @override
  State<ListReviewsWidget> createState() => _ListReviewsWidgetState();
}

class _ListReviewsWidgetState extends State<ListReviewsWidget> {
  final reviewController = Get.put(ReviewController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: GetX<ReviewController>(builder: (controller) {
        return ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                  child: Column(
                    children: [
                    Divider(thickness: 0.5,color: Color(0xffBEBEBE).withOpacity(0.5)),

                      Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 0),
                          leading: ClipOval(
                            child: Image.asset(
                              controller.reviews[index].avt,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            controller.reviews[index].name,
                            style: TextAppStyle().text4Black(),
                          ),
                          subtitle: Row(
                              children: List.generate(
                                  5,
                                  (i) => Icon(
                                        Icons.star_rounded,
                                        color: controller.reviews[index].star > i
                                            ? Color(0xffFFCC09)
                                            : Theme.of(context)
                                                .hintColor
                                                .withOpacity(0.2),
                                        size: 20.0,
                                      ))),
                        ),
                        Text(controller.reviews[index].content,
                        style: TextAppStyle().text4Black()),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:List.generate(3, (index) => Image.asset(
                          controller.reviews[Random().nextInt(controller.reviews.length)].img,
                          width: 100,
                          height: 60,
                          ))
                        ),
                        SizedBox(height: 12,),
                        Text('Ngày '+controller.reviews[index].time,
                        style: TextAppStyle().textSmallGrey(),)
                      ],
                ),
              ),
                    ],
                  ));
            },
            separatorBuilder: (context, index) {
              return Divider(color: Colors.transparent,);
            },
            itemCount: controller.reviews.length);
      }),
    );
  }
}
