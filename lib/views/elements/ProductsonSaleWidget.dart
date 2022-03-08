import 'package:flutter/material.dart';
import 'package:flutter_getx/styles/style.dart';
import 'package:flutter_getx/views/my_detail_page.dart';
import 'package:get/get.dart';

import '../../controllers/products_controller.dart';

class ProductsonSaleWidget extends StatefulWidget {
  const ProductsonSaleWidget({ Key? key }) : super(key: key);

  @override
  State<ProductsonSaleWidget> createState() => _ProductsonSaleWidgetState();
}

class _ProductsonSaleWidgetState extends State<ProductsonSaleWidget> {
  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sản phẩm đang sale',
                            style: TextAppStyle().text1(),
                          ),
                          Text('Xem tất cả', style: TextAppStyle().text4Green())
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: GetX<ProductController>(builder: (controller) {
                          return ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.products.length,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xffEBEBEB),
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      width: 165,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 8),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                controller.products[index].img,
                                                width: 148,
                                                height: 148,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xffEBEBEB)
                                                      .withOpacity(0.7),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            controller.products[index].name,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextAppStyle().text3(),
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Row(
                                                  children: List.generate(
                                                      5,
                                                      (i) => Icon(
                                                            Icons.star_rounded,
                                                            color: controller
                                                                        .products[
                                                                            index]
                                                                        .star >
                                                                    i
                                                                ? Color(
                                                                    0xffFFCC09)
                                                                : Theme.of(
                                                                        context)
                                                                    .hintColor
                                                                    .withOpacity(
                                                                        0.2),
                                                            size: 12.0,
                                                          ))),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                width: 1,
                                                height: 10,
                                                color: Color(0xff858585)
                                                    .withOpacity(0.5),
                                              ),
                                              Text(
                                                'Đã bán ' +
                                                    controller
                                                        .products[index].sold
                                                        .toString(),
                                                style:
                                                    TextAppStyle().textSmall(),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 4),
                                            decoration: BoxDecoration(
                                                color: Color(0xffEBEBEB),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Text(
                                              controller.products[index].bio,
                                              style: TextAppStyle().textSmall(),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      controller.products[index]
                                                              .price
                                                              .toStringAsFixed(
                                                                  3) +
                                                          "VND",
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextAppStyle()
                                                          .textPriceRed(),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 7,
                                                            vertical: 3),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(3),
                                                        color:
                                                            Color(0xfff75555)),
                                                    child: Text(
                                                        '-' +
                                                            controller
                                                                .products[index]
                                                                .disPer
                                                                .toString() +
                                                            '%',
                                                        style: TextAppStyle()
                                                            .textSmallWhite()),
                                                  )
                                                ]),
                                          ),
                                          Container(
                                            child: Text(
                                              controller.products[index].price
                                                  .toStringAsFixed(3),
                                              style: TextStyle(
                                                  color: Color(0xffBEBEBE),
                                                  fontFamily: 'Mulish',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Get.to(() => DetailPage(), arguments: {
                                        'products':productController.products[index],
                                      });
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }),
                      ),
                    ],
                  ),
                );
  }
}