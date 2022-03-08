import 'package:flutter/material.dart';
import 'package:flutter_getx/styles/style.dart';

class TabsContent extends StatefulWidget {
  const TabsContent({ Key? key }) : super(key: key);

  @override
  State<TabsContent> createState() => _TabsContentState();
}

class _TabsContentState extends State<TabsContent> with TickerProviderStateMixin {
    late TabController _tabController;
  

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
                          labelPadding: EdgeInsets.symmetric(horizontal: 10),
                          indicator: UnderlineTabIndicator(
                              borderSide:
                                  BorderSide(width: 1, color: Color(0xff019748)),
                              insets: EdgeInsets.symmetric(horizontal: 5)),
                          indicatorPadding: EdgeInsets.symmetric(horizontal: 0),
                          controller: _tabController,
                          labelColor: Color(0xff333333),
                          isScrollable: true,
                          indicatorWeight: 1,
                          indicatorColor: Color(0xff019748),
                          unselectedLabelColor: Color(0xff888888),
                          unselectedLabelStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Mulish'),
                          labelStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Mulish'),
                          tabs: <Widget>[
                            Text('Mô tả'),
                            Text('Thông tin sản phẩm'),
                            Text('Thương hiệu'),
                          ],
                        ),
                                            SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        SingleChildScrollView(
                          child: Container(
                              child: Text(
                            'Dung dịch nhỏ mắt dành cho trẻ em từ 3-15 tuổi đeo kính lâu ngày, tiếp xúc thường xuyên với các thiết bị điện tử, môi trường bụi bẩn, kích ứng hóa chất khử trùng khi bơi lội ,..',
                            style: TextAppStyle().text4Black(),
                          )),
                        ),
                        SingleChildScrollView(
                          child: Container(
                              child: Text(
                                  'Dung dịch nhỏ mắt dành cho trẻ em từ 3-15 tuổi đeo kính lâu ngày, tiếp xúc thường xuyên với các thiết bị điện tử, môi trường bụi bẩn, kích ứng hóa chất khử trùng khi bơi lội ,..',
                                  style: TextAppStyle().text4Black())),
                        ),
                        SingleChildScrollView(
                          child: Container(
                              child: Text(
                            'Dung dịch nhỏ mắt dành cho trẻ em từ 3-15 tuổi đeo kính lâu ngày, tiếp xúc thường xuyên với các thiết bị điện tử, môi trường bụi bẩn, kích ứng hóa chất khử trùng khi bơi lội ,..',
                            style: TextAppStyle().text4Black(),
                          )),
                        )
                      ],
                    ),
                  )
        ],
      ),
    );
  }
}