import 'package:flutter_getx/models/favorites.dart';
import 'package:get/get.dart';
class FavoriteController extends GetxController{
  var favorites = RxList<Favorite>([]); 
  @override
  void onInit() {
    
    super.onInit();
    fetchCategories();
    
  }

  void fetchCategories() async{
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Favorite(name: 'Jasunny tuýp 50g thuốc bôi trị gàu ngứa da đầu, viêm da tiết bã nhờn', img: 'img/f1.jpg', price: 190, star: 4, sold: 50, bio: 'Jasunny', disPer: 10, oldPrice: 210),
      Favorite(name: 'Corti RVN chai 8g trị chàm thể tạng, chàm dạng đĩa, sẩn ngứa', img: 'img/f2.jpg', price: 221, star: 5, sold: 30, bio: 'Corti', disPer: 20, oldPrice: 271),
      Favorite(name: 'Dầu Trancumin chai 25ml điều trị bỏng, giúp vết thương mau lành', img: 'img/f3.jpg', price: 262, star: 3, sold: 78, bio: 'Trancumin', disPer: 25, oldPrice: 315),
      Favorite(name: 'Dung dịch bôi Remowart chai 10ml chữa mụn cóc, vết chai sần chân', img: 'img/f4.jpg', price: 192, star: 2, sold: 125, bio: 'Remowart', disPer: 40, oldPrice: 250),
      Favorite(name: 'Thuốc mỡ DEP lọ 10g trị ghẻ, ngứa, phòng và trị côn trùng cắn', img: 'img/f5.jpg', price: 98, star: 1, sold: 20, bio: 'Dep', disPer: 33, oldPrice: 114),
    ];
    favorites.value = serverResponse;
  }
}