import 'package:flutter_getx/models/categories.dart';
import 'package:get/get.dart';
class CategoryController extends GetxController{
  var items = RxList<Category>([]); 
  @override
  void onInit() {
    
    super.onInit();
    fetchCategories();
    
  }

  void fetchCategories() async{
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Category(name: "Chăm sóc mẹ & bé", img: "img/ctg1.png"),
      Category(name: "Thực phẩm dinh dưỡng", img: "img/ctg2.png"),
      Category(name: "Sức khỏe cá nhân", img: "img/ctg3.png"),
      Category(name: "Nhà cửa và đời sống", img: "img/ctg4.png"),
    ];
    items.value = serverResponse;
    
  }
}