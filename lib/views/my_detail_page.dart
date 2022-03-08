import 'package:flutter_getx/controllers/reviews_controller.dart';
import 'package:flutter_getx/models/products.dart';
import 'package:flutter_getx/styles/style.dart';
import 'package:flutter_getx/views/elements/FavoritesWidget.dart';
import 'package:flutter_getx/views/elements/ListReviewsWidget.dart';
import 'package:flutter_getx/views/elements/TabsContentWidget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  @override
  final reviewController = Get.put(ReviewController());
  
  Widget build(BuildContext context) {
    Product product = Get.arguments['products'];
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
              child: Text(
            'Chi tiết sản phẩm',
            style: TextAppStyle().textTitle(),
          )),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: [
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
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontFamily: 'Mulish', fontSize: 10),
                              ),
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
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Image.asset(
                    product.img,
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(product.name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextAppStyle().text1()),
                              ),
                              SizedBox(width: 20),
                              Icon(
                                Icons.favorite_border,
                                color: Color(0xffBEBEBE),
                                size: 30,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                  children: List.generate(
                                      5,
                                      (i) => Icon(
                                            Icons.star_rounded,
                                            color: product.star > i
                                                ? Color(0xffFFCC09)
                                                : Theme.of(context)
                                                    .hintColor
                                                    .withOpacity(0.2),
                                            size: 20.0,
                                          ))),
                              SizedBox(width: 10),
                              Text(
                                '(' + product.reviews.toString() + ' đánh giá)',
                                style: TextAppStyle().text4Grey(),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                width: 1,
                                height: 18,
                                color: Color(0xff858585).withOpacity(0.5),
                              ),
                              Text(
                                'Đã bán ' + product.sold.toString(),
                                style: TextAppStyle().text4Black(),
                              )
                            ],
                          ),
                          SizedBox(height: 18),
                          Text(
                              NumberFormat.currency(locale: 'vi')
                                  .format(product.price * 1000),
                              style: TextAppStyle().textPriceBigBlack()),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color(0xff019748).withOpacity(0.1)),
                                  child: Text(
                                    'Chính hãng',
                                    style: TextAppStyle().text4Green(),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color(0xff019748).withOpacity(0.1)),
                                  child: Text(
                                    'Miễn phí vận chuyển',
                                    style: TextAppStyle().text4Green(),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color(0xff019748).withOpacity(0.1)),
                                  child: Text(
                                    product.bio,
                                    style: TextAppStyle().text4Green(),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 0.5,
                                color: Color(0xff888888),
                              ),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, left: 12, bottom: 12),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(product.img,
                                        width: 40, height: 40)),
                              ),
                              trailing: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: GestureDetector(
                                  child: Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                              title: Text('Phân loại',
                                  style: TextAppStyle().text4Grey()),
                              subtitle: Text(
                                'Chai/ 150 ml',
                                style: TextAppStyle().text4Black14(),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          TabsContent(),
                          SizedBox(height: 20),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Đánh giá',
                                      style: TextAppStyle().text1(),
                                    ),
                                    Text('Xem tất cả',
                                        style: TextAppStyle().text4Green()),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Row(
                                        children: List.generate(
                                            5,
                                            (i) => Icon(
                                                  Icons.star_rounded,
                                                  color: product.star > i
                                                      ? Color(0xffFFCC09)
                                                      : Theme.of(context)
                                                          .hintColor
                                                          .withOpacity(0.2),
                                                  size: 20.0,
                                                ))),
                                    SizedBox(width: 10),
                                    Text(product.star.toStringAsFixed(1) + '/5',
                                        style: TextAppStyle().textRed12()),
                                    SizedBox(width: 5),
                                    Text(
                                      '(' +
                                          product.reviews.toString() +
                                          ' đánh giá)',
                                      style: TextAppStyle().text4Grey(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    ListReviewsWidget(),
                    SizedBox(height: 15),
                    GestureDetector(
                      child: Container(
                        width: 170,
                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff019748),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Expanded(
                          child: Text('Xem tất cả (' +product.reviews.toString()+' đánh giá)',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextAppStyle().text4White(),),
                        ),
                      ),
                      onTap: (){},
                    ),
                    SizedBox(height: 30),
                    FavoritesWidget()
                  ],
                ),
              ],
            ),
          )),
        ));
  }
}
