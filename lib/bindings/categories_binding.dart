import 'package:flutter_getx/controllers/categories_controller.dart';
import 'package:flutter_getx/models/categories.dart';
import 'package:get/get.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryController>(
        () => CategoryController());
  }
}
