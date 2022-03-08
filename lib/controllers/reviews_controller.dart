import 'package:flutter_getx/models/reviews.dart';
import 'package:get/get.dart';
class ReviewController extends GetxController{
  var reviews = RxList<Review>([]); 
  @override
  void onInit() {
    
    super.onInit();
    fetchCategories();
    
  }

  void fetchCategories() async{
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Review(name: 'Nguyễn Quốc Toàn', avt: 'img/avt.jpg', img: 'img/pro1.jpg', star: 5, content: 'Sản phẩm tốt, đúng như hình, giao thuốc rất nhanh. Nói chung là tiện lợi, duyệt duyệt. Sẽ mua trên AI.Care dài dài <3',time: '20/09/2021'),
      Review(name: 'Ng Q Toan', avt: 'img/avt1.jpg', img: 'img/pro2.jpg', star: 4, content: 'Sản phẩm tốt như mô tả, đáng tin cậy. Sẽ mua trên AI.Care dài dài :)',time:'5/1/2022'),
      Review(name: 'Nn Qc Toan', avt: 'img/avt2.jpg', img: 'img/pro3.jpg', star: 2, content: 'Cảm thấy chưa được tốt lắm, cần cải thiện để nâng cao chất lượng.',time:'19/1/2022'),
      Review(name: 'Toan Nguyen', avt: 'img/avt3.jpg', img: 'img/pro4.jpg', star: 5,content: 'Tuyệt vời AI.Care, gia đình chúng tôi rất hài lòng về dịch vụ.',time:'2/2/2022'),
      Review(name: 'Quoc Toan', avt: 'img/avt4.jpg',img: 'img/pro5.jpg', star: 3, content: 'Trong thời gian tới cần phải cân chỉnh lại 1 vài tính năng.',time:'6/3/2022'),
    ];
    reviews.value = serverResponse;
  }
}