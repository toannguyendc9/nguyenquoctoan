import 'package:flutter_getx/models/products.dart';
import 'package:get/get.dart';
class ProductController extends GetxController{
  var products = RxList<Product>([]); 
  @override
  void onInit() {
    
    super.onInit();
    fetchCategories();
    
  }

  void fetchCategories() async{
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Product(name: 'Azadou điều trị các loại mun trứng cá', img: 'img/pro1.jpg', price: 290, star: 5, sold: 50, bio: 'Azadou', disPer: 30, oldPrice: 310, reviews: 17),
      Product(name: 'Contractubex tuýp 50g điều trị sẹo lồi, sẹo phì đại, sẹo biến dạng', img: 'img/pro2.jpg', price: 421, star: 4, sold: 10, bio: 'Contractubex', disPer: 20, oldPrice: 451,reviews: 4),
      Product(name: 'Hemopropin tuýp 20g bảo vệ, giảm kích ứng niêm mạc trực tràng', img: 'img/pro3.jpg', price: 262, star: 5, sold: 30, bio: 'Hemopropin', disPer: 25, oldPrice: 292,reviews: 8),
      Product(name: 'Berocca Performance hộp 24 viên bổ sung vitamin, khoáng chất', img: 'img/pro4.jpg', price: 192, star: 4, sold: 100, bio: 'Berocca', disPer: 40, oldPrice: 222,reviews: 10),
      Product(name: 'Beprosone tuýp 15g trị nhiễm khuẩn da, chốc lở, vết bỏng, vết thương', img: 'img/pro5.jpg', price: 98, star: 3, sold: 20, bio: 'Beprosone', disPer: 33, oldPrice: 114,reviews: 20),
    ];
    products.value = serverResponse;
  }
}