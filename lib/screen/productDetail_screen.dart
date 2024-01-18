import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF6F6F7),
      appBar: AppBar(
        backgroundColor: Color(0XFFE5AB29),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          "Chi tiết đơn hàng",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ĐH 18849194888",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0XFF519616),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'T',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Đỗ Công Hưng",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Color(0XFF0ECC37),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
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
                            "Đà nẵng/033****312",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Nguyễn Thành An",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Color(0XFF0ECC37),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Nhân viên",
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
                            "Đà nẵng/033****312",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thông tin",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.black45,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "ĐH 18849194888",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.black45,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40),
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tên sản phẩm",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    "Áo hoodie form rộng",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "MVĐ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    "S09259242.Dn7",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Mã khách hàng",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    "MKH.03959936",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Mã đơn hàng",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    "ĐH.19959936",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Khối lượng",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    "1kg",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Kích thước",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    "Dài: 23cm/ Rộng 30cm/ Cao 12cm",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Địa chỉ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    "234/17 Đỗ Bá, Ngũ Hành Sơn, Đn",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Giá trị ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    "123.000 đ",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Thu hộ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    "133.000 đ",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Phí dịch vụ cuối cùng",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    "13.000 đ",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Trạng thái",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    "Đang giao hàng",
                                    style: TextStyle(
                                      color: Color(0XFF519616),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black26,
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 3,
                                        color: Colors.black45,
                                      ),
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black26,
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 3,
                                        color: Colors.black45,
                                      ),
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0XFF6CCA1C),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Chiều 12/11/2022: Đã tạo đơn thành công",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black45,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        "Chiều 13/11/2022: Đã lấy hàng",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black45,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        "Sáng 14/11/2022: Đang giao hàng",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0XFF519616),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Color(0XFFFFB000)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.mark_chat_unread_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "Chat yêu cầu",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Color(0XFFFFB000)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.rate_review_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "Chấm/Đánh giá",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
