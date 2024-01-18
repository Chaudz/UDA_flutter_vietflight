import 'package:flutter/material.dart';
import 'package:vietflight/screen/orderCreation_screen.dart';
import 'package:vietflight/screen/productDetail_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Color(0XFFE5AB29),
                ),
                Positioned(
                  top: 20,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Xin chào!",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Thuthuy Shop.Clothing ",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: TextButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    CircleBorder(),
                                  ),
                                ),
                                onPressed: () {},
                                child: Stack(
                                  children: [
                                    Icon(
                                      Icons.notification_important_outlined,
                                      color: Colors.white,
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/avatar.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  top: 80,
                  bottom: 0,
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0XFFEE3105),
                      ),
                      contentPadding: EdgeInsets.all(10),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Text(
                        "Tra cứu Mã vận đơn/Mã đơn hàng/Mã khách hàng",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0XFF676F73),
                        ),
                      ),
                      border: InputBorder.none, // Tắt đường viền xung quanh
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Ink(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2,
                          color: Color(0XFF519616),
                        ),
                        top: BorderSide.none,
                        left: BorderSide.none,
                        right: BorderSide.none,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            side: BorderSide.none, // Màu của đường viền
                            borderRadius: BorderRadius.circular(0.0), // Độ cong của góc
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 20,
                          top: 10,
                        ),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("assets/images/order-detail.png"),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Quản lý đơn hàng",
                              style: TextStyle(
                                color: Color(0XFF519616),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Ink(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide.none,
                        top: BorderSide.none,
                        left: BorderSide.none,
                        right: BorderSide.none,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OrderCreation()),
                        );
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 20,
                          top: 10,
                        ),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("assets/images/order-create.png"),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Tạo đơn hàng",
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Ink(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide.none,
                        top: BorderSide.none,
                        left: BorderSide.none,
                        right: BorderSide.none,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            side: BorderSide.none, // Màu của đường viền
                            borderRadius: BorderRadius.circular(0.0), // Độ cong của góc
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 20,
                          top: 10,
                        ),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("assets/images/money-bag.png"),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Quản lý dòng tiền",
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Color(0XFF345E9733),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 5,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(height: 40, width: 5, color: Color(0XFFFFB000)),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Đơn hàng gần nhất"),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder()),
                      ),
                      child: Text(
                        'Xem tất cả >',
                        style: TextStyle(
                          color: Color(0XFFEE3105),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetail(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder()),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/images/avatar.jpg'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Đỗ Công Hưng",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0XFF0000005),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 4,
                                        width: 4,
                                        decoration: BoxDecoration(
                                          color: Color(0XFF0ECC37),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "Đã chốt",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                "Hôm nay >",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black45,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double.infinity,
                            height: 2,
                            color: Colors.black12,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/motorbike.png'),
                                    height: 30,
                                    width: 30,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Đơn hàng",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black45,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "Tiền CoD:",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "230.000 đ/SP",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double.infinity,
                            height: 2,
                            color: Colors.black12,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Text(
                                "Trạng thái đơn hàng",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Chat yêu cầu",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF559A1A),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Row(
                            children: [
                              Text(
                                "Đang lấy hàng",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0XFF519616),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "12:30 20/11/2022",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black45,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
