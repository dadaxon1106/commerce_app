import 'package:commerce_app/pages/order_view/order_view.dart';
import 'package:commerce_app/pages/profile_view/profile_view.dart';
import 'package:flutter/material.dart';

import '../notification_view/notification_view.dart';
import 'home_view.dart';

class HomeState extends StatefulWidget {
  const HomeState({super.key});

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  int _currentIndex = 0;
  List<Widget> pages = [];
  Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    pages
      ..add(const HomeView())
      ..add(const NotificationView())
      ..add(const OrderView())
      ..add(const ProfileView());
    _currentPage = const HomeView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: SafeArea(
        child: _currentPage!,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1D182A),
        currentIndex: _currentIndex,
        onTap: (int index) => _changePage(index),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: const Color(0xFF8E6CEF),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1D182A),
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1D182A),
            icon: Icon(Icons.notifications_none),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1D182A),
            icon: Icon(Icons.list_alt),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1D182A),
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
    );
  }

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = pages[selectedIndex];
    });
  }
}
