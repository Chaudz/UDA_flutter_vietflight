import 'package:flutter/material.dart';
import 'package:vietflight/screen/homepage_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List listPage = [
    HomePageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageScreen(),
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
