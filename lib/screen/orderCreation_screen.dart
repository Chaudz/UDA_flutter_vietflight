import 'package:flutter/material.dart';

class OrderCreation extends StatefulWidget {
  const OrderCreation({super.key});

  @override
  State<OrderCreation> createState() => _OrderCreationState();
}

class _OrderCreationState extends State<OrderCreation> {
  int _currentIndex = 0;
  String dropCity = "Tỉnh/TP";
  String dropDistrict = "Quận/Huyện";
  String dropVillage = "Phường/Xã";
  int valueMethodGetProduct = 1;
  int? agreement = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF6F6F7),
      appBar: AppBar(
        backgroundColor: Color(0XFFE5AB29),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          "Tạo đơn hàng",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0XFFECCB81),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/avatar.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Người gửi",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black45,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ThuThuyShop.Clothing",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "K234/18 Đỗ Bá, Phường Mỹ An, Quận Ngũ Hành Sơn, Đà Nẵng",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0XFF519616),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/qr.png"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Thông tin người nhận",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black45,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.phone,
                          size: 30,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              label: Text(
                                "Số điện thoại khách nhận",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          size: 30,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              label: Text(
                                "Têm khách hàng nhận",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.link,
                          size: 30,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              label: Text(
                                "Địa chỉ liên kết",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color: Color(0XFFECCB81),
                                    border: Border.all(
                                      color: Color(0XFFFFB000),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: DropdownButton(
                                    value: dropCity,
                                    onChanged: (value) {
                                      setState(() {
                                        dropCity = value!;
                                      });
                                    },
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(left: 20, right: 20),
                                    underline: Container(),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    items: [
                                      DropdownMenuItem(
                                        value: "Tỉnh/TP",
                                        child: Text("Tỉnh/TP"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Đà nẵng",
                                        child: Text("Đà nẵng"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color: Color(0XFFECCB81),
                                    border: Border.all(
                                      color: Color(0XFFFFB000),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: DropdownButton(
                                    value: dropDistrict,
                                    onChanged: (value) {
                                      setState(() {
                                        dropDistrict = value!;
                                      });
                                    },
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(left: 20, right: 20),
                                    underline: Container(),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    items: [
                                      DropdownMenuItem(
                                        value: "Quận/Huyện",
                                        child: Text("Quận/Huyện"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Lý sơn",
                                        child: Text("Lý sơn"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color: Color(0XFFECCB81),
                                    border: Border.all(
                                      color: Color(0XFFFFB000),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: DropdownButton(
                                    value: dropVillage,
                                    onChanged: (value) {
                                      setState(() {
                                        dropVillage = value!;
                                      });
                                    },
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(left: 20, right: 20),
                                    underline: Container(),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    items: [
                                      DropdownMenuItem(
                                        value: "Phường/Xã",
                                        child: Text("Phường/Xã"),
                                      ),
                                      DropdownMenuItem(
                                        value: "An vĩnh",
                                        child: Text("An vĩnh"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 230,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.black26,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Phương thức vận chuyển",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phương thức lấy hàng",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: valueMethodGetProduct,
                                    onChanged: (value) {
                                      setState(() {
                                        valueMethodGetProduct = value!;
                                      });
                                    },
                                    activeColor: Color(0XFF519616),
                                  ),
                                  Text("Bưu tá tới lấy")
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: valueMethodGetProduct,
                                    onChanged: (value) {
                                      setState(() {
                                        valueMethodGetProduct = value!;
                                      });
                                    },
                                    activeColor: Color(0XFF519616),
                                  ),
                                  Text("Tới bưu cục gửi")
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Phương thức gửi hàng",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: 1,
                                onChanged: (value) {},
                                activeColor: Color(0XFF519616),
                              ),
                              Text("Giao hàng VietFlight")
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Thông tin sản phẩm",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.production_quantity_limits,
                          size: 30,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              label: Text(
                                "Tên sản phẩm bán",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.price_change_outlined,
                          size: 30,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              label: Text(
                                "Giá trị",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.price_change_outlined,
                          size: 30,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              label: Text(
                                "Thu hộ",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.credit_card,
                          size: 30,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              suffixIcon: Container(
                                width: 200,
                                child: TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.white,
                                        builder: (context) {
                                          return Padding(
                                            padding: EdgeInsets.only(
                                              top: 20,
                                              left: 20,
                                              right: 20,
                                              bottom: 40,
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          "Số tài khoản",
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.black45,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 10),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.black12,
                                                        borderRadius: BorderRadius.all(
                                                          Radius.circular(10),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(20),
                                                        child: Stack(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment.start,
                                                                    children: [
                                                                      Text("VO THI THU THUY"),
                                                                      Text(
                                                                          "VIETCOMBANK Chi Nhánh Đà Nẵng số đuôi *****707"),
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 100,
                                                                )
                                                              ],
                                                            ),
                                                            Positioned(
                                                              right: 10,
                                                              top: 10,
                                                              child: Icon(
                                                                Icons.check,
                                                                color: Color(0XFF519616),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      "Không còn nữa ~",
                                                      style: TextStyle(
                                                        color: Colors.black45,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  child: TextButton(
                                                      onPressed: () {},
                                                      style: ButtonStyle(
                                                        padding: MaterialStateProperty.all(
                                                          EdgeInsets.only(
                                                            top: 20,
                                                            bottom: 20,
                                                          ),
                                                        ),
                                                        shape: MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                          ),
                                                        ),
                                                        backgroundColor: MaterialStateProperty.all(
                                                          Color(0XFFFFB000),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "Thêm thẻ ngân hàng",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.w600,
                                                          color: Colors.white,
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder()),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "VO THI THU THUY VIETCOMBANK",
                                          style: TextStyle(
                                            color: Colors.black45,
                                          ),
                                          overflow: TextOverflow
                                              .ellipsis, // Hiển thị dấu "..." khi vượt quá chiều rộng
                                          maxLines: 1, // Số dòng tối đa là 1
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black45,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              label: Text(
                                "Số tài khoản",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Container(
                        color: Colors.black12,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tổng khối lượng",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 5, right: 5),
                                        suffixIcon: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'kg',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black45,
                                              ),
                                            ),
                                          ],
                                        ),
                                        floatingLabelBehavior: FloatingLabelBehavior.never,
                                        label: Text(
                                          '0.01-120',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black45,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Chiều dài",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 5, right: 5),
                                        suffixIcon: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'cm',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black45,
                                              ),
                                            ),
                                          ],
                                        ),
                                        floatingLabelBehavior: FloatingLabelBehavior.never,
                                        label: Text(
                                          '0.01-120',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black45,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Chiều rộng",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 5, right: 5),
                                        suffixIcon: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'cm',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black45,
                                              ),
                                            ),
                                          ],
                                        ),
                                        floatingLabelBehavior: FloatingLabelBehavior.never,
                                        label: Text(
                                          '0.01-120',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black45,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Chiều cao",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 5, right: 5),
                                        suffixIcon: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'cm',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black45,
                                              ),
                                            ),
                                          ],
                                        ),
                                        floatingLabelBehavior: FloatingLabelBehavior.never,
                                        label: Text(
                                          '0.01-120',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black45,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.note_alt_outlined,
                          size: 30,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              suffixIcon: Container(
                                width: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "VD: Cho khách kiểm tra hàng",
                                      style: TextStyle(
                                        color: Colors.black45,
                                      ),
                                      overflow: TextOverflow
                                          .ellipsis, // Hiển thị dấu "..." khi vượt quá chiều rộng
                                      maxLines: 1, // Số dòng tối đa là 1
                                    ),
                                  ],
                                ),
                              ),
                              label: Text(
                                "Ghi chú",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: agreement,
                          onChanged: (value) {
                            setState(() {
                              agreement = value!;
                            });
                          },
                          activeColor: Color(0XFF519616),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Text("Tôi đồng ý"),
                            Text(
                              "“Điều khoản người dùng”",
                              style: TextStyle(
                                color: Color(0XFF0733A4),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Tạm tính:",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.white,
                                        builder: (context) {
                                          return Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                color: Colors.white,
                                                child: Padding(
                                                  padding: EdgeInsets.all(20),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Tổng cước tạm tính",
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                          Text(
                                                            "33.099đ",
                                                            style: TextStyle(
                                                              color: Colors.black45,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(left: 20),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Text("Tổng cước vận chuyển"),
                                                                Text("30.800đ"),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Text("Phí Cod"),
                                                                Text("0đ"),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Text("Phí Bảo hiểm"),
                                                                Text("0đ"),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Text("Thuế VAT"),
                                                                Text("3.080đ"),
                                                              ],
                                                            ),
                                                            SizedBox(height: 5),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Radio(
                                                            value: 1,
                                                            groupValue: agreement,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                agreement = value!;
                                                              });
                                                            },
                                                            activeColor: Color(0XFF519616),
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text("Tôi đồng ý"),
                                                              Text(
                                                                "“Điều khoản người dùng”",
                                                                style: TextStyle(
                                                                  color: Color(0XFF0733A4),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment.start,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    "Tạm tính:",
                                                                    style: TextStyle(
                                                                      fontSize: 20,
                                                                      color: Colors.black45,
                                                                      fontWeight: FontWeight.w600,
                                                                    ),
                                                                  ),
                                                                  TextButton(
                                                                    onPressed: () {
                                                                      showModalBottomSheet(
                                                                          context: context,
                                                                          backgroundColor:
                                                                              Colors.white,
                                                                          builder: (context) {
                                                                            return Column(
                                                                              mainAxisAlignment:
                                                                                  MainAxisAlignment
                                                                                      .spaceBetween,
                                                                              children: [
                                                                                Padding(
                                                                                  padding:
                                                                                      EdgeInsets
                                                                                          .all(20),
                                                                                  child: Column(
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisAlignment:
                                                                                            MainAxisAlignment
                                                                                                .spaceBetween,
                                                                                        children: [
                                                                                          Text(
                                                                                            "Tổng cước tạm tính",
                                                                                            style:
                                                                                                TextStyle(
                                                                                              fontSize:
                                                                                                  18,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            "33.099đ",
                                                                                            style:
                                                                                                TextStyle(
                                                                                              color:
                                                                                                  Colors.black45,
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsets
                                                                                            .only(
                                                                                                left:
                                                                                                    20),
                                                                                        child:
                                                                                            Column(
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisAlignment:
                                                                                                  MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Text("Tổng cước vận chuyển"),
                                                                                                Text("30.800đ"),
                                                                                              ],
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height:
                                                                                                  5,
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisAlignment:
                                                                                                  MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Text("Phí Cod"),
                                                                                                Text("0đ"),
                                                                                              ],
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height:
                                                                                                  5,
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisAlignment:
                                                                                                  MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Text("Phí Bảo hiểm"),
                                                                                                Text("0đ"),
                                                                                              ],
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height:
                                                                                                  5,
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisAlignment:
                                                                                                  MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Text("Thuế VAT"),
                                                                                                Text("3.080đ"),
                                                                                              ],
                                                                                            ),
                                                                                            SizedBox(
                                                                                                height:
                                                                                                    5),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        children: [
                                                                                          Radio(
                                                                                            value:
                                                                                                1,
                                                                                            groupValue:
                                                                                                agreement,
                                                                                            onChanged:
                                                                                                (value) {
                                                                                              setState(
                                                                                                  () {
                                                                                                agreement =
                                                                                                    value!;
                                                                                              });
                                                                                            },
                                                                                            activeColor:
                                                                                                Color(0XFF519616),
                                                                                          ),
                                                                                          SizedBox(
                                                                                            width:
                                                                                                20,
                                                                                          ),
                                                                                          Row(
                                                                                            children: [
                                                                                              Text(
                                                                                                  "Tôi đồng ý"),
                                                                                              Text(
                                                                                                "“Điều khoản người dùng”",
                                                                                                style:
                                                                                                    TextStyle(
                                                                                                  color: Color(0XFF0733A4),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                BottomNavigationBar(
                                                                                  currentIndex:
                                                                                      _currentIndex,
                                                                                  onTap: (int
                                                                                      newIndex) {
                                                                                    setState(() {
                                                                                      _currentIndex =
                                                                                          newIndex;
                                                                                    });
                                                                                  },
                                                                                  selectedItemColor:
                                                                                      Color(
                                                                                          0XFFFFB000),
                                                                                  unselectedItemColor:
                                                                                      Color(
                                                                                          0XFF40333E),
                                                                                  showUnselectedLabels:
                                                                                      true,
                                                                                  items: [
                                                                                    BottomNavigationBarItem(
                                                                                      label: 'Home',
                                                                                      icon: Icon(
                                                                                          Icons
                                                                                              .home),
                                                                                    ),
                                                                                    BottomNavigationBarItem(
                                                                                      label:
                                                                                          'Đơn hàng',
                                                                                      icon: Icon(Icons
                                                                                          .bookmark_border),
                                                                                    ),
                                                                                    BottomNavigationBarItem(
                                                                                      label:
                                                                                          'Hỗ trợ',
                                                                                      icon: Icon(Icons
                                                                                          .support_agent),
                                                                                    ),
                                                                                    BottomNavigationBarItem(
                                                                                      label:
                                                                                          'Tài khoản',
                                                                                      icon: Icon(Icons
                                                                                          .manage_accounts_sharp),
                                                                                    ),
                                                                                  ],
                                                                                )
                                                                              ],
                                                                            );
                                                                          });
                                                                    },
                                                                    style: ButtonStyle(
                                                                      shape:
                                                                          MaterialStateProperty.all(
                                                                        RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(
                                                                                  10),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        Text(
                                                                          "33.099đ",
                                                                          style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            color: Colors.red,
                                                                          ),
                                                                        ),
                                                                        Icon(
                                                                          Icons.arrow_drop_up,
                                                                          color: Colors.black45,
                                                                        )
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Text(
                                                                "Tiền phí cuối cùng theo bưu cục",
                                                                style: TextStyle(
                                                                  color: Colors.black45,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 50,
                                                          ),
                                                          Expanded(
                                                            child: TextButton(
                                                              onPressed: () {},
                                                              style: ButtonStyle(
                                                                padding: MaterialStateProperty.all(
                                                                    EdgeInsets.only(
                                                                        top: 20, bottom: 20)),
                                                                backgroundColor:
                                                                    MaterialStateProperty.all(
                                                                  Color(0XFFFFB000),
                                                                ),
                                                                shape: MaterialStateProperty.all(
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(10),
                                                                )),
                                                              ),
                                                              child: Text(
                                                                'Hoàn thành',
                                                                style: TextStyle(
                                                                  color: Colors.white,
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              BottomNavigationBar(
                                                currentIndex: _currentIndex,
                                                onTap: (int newIndex) {
                                                  setState(() {
                                                    _currentIndex = newIndex;
                                                  });
                                                },
                                                selectedItemColor: Color(0XFFFFB000),
                                                unselectedItemColor: Color(0XFF40333E),
                                                showUnselectedLabels: true,
                                                items: [
                                                  BottomNavigationBarItem(
                                                    label: 'Home',
                                                    icon: Icon(Icons.home),
                                                  ),
                                                  BottomNavigationBarItem(
                                                    label: 'Đơn hàng',
                                                    icon: Icon(Icons.bookmark_border),
                                                  ),
                                                  BottomNavigationBarItem(
                                                    label: 'Hỗ trợ',
                                                    icon: Icon(Icons.support_agent),
                                                  ),
                                                  BottomNavigationBarItem(
                                                    label: 'Tài khoản',
                                                    icon: Icon(Icons.manage_accounts_sharp),
                                                  ),
                                                ],
                                              )
                                            ],
                                          );
                                        });
                                  },
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "33.099đ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.red,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down_sharp,
                                        color: Colors.black45,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "Tiền phí cuối cùng theo bưu cục",
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.only(top: 20, bottom: 20)),
                              backgroundColor: MaterialStateProperty.all(
                                Color(0XFFFFB000),
                              ),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                            ),
                            child: Text(
                              'Hoàn thành',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        selectedItemColor: Color(0XFFFFB000),
        unselectedItemColor: Color(0XFF40333E),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Đơn hàng',
            icon: Icon(Icons.bookmark_border),
          ),
          BottomNavigationBarItem(
            label: 'Hỗ trợ',
            icon: Icon(Icons.support_agent),
          ),
          BottomNavigationBarItem(
            label: 'Tài khoản',
            icon: Icon(Icons.manage_accounts_sharp),
          ),
        ],
      ),
    );
  }
}
