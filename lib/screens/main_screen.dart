import 'package:flutter/material.dart';
import 'package:travel_app/pages/profile_page.dart';
import 'package:travel_app/pages/travel_page.dart';
import 'package:travel_app/pages/flights_page.dart';
import 'package:travel_app/pages/hotels_page.dart';
import 'package:travel_app/components/app_bottom_navigation_bar.dart';
import 'package:travel_app/components/floating_action_bottom.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _pageIndex;
  late List<Widget> pages;

  @override
  void initState() {
    _pageIndex = 0;
    changeIndex(int index) => setState(() => _pageIndex = index);
    pages = <Widget>[
      TravelPage(onRequestIndexChange: changeIndex),
      FlightsPage(onRequestIndexChange: changeIndex),
      const SizedBox(),
      HotelsPage(
        onRequestIndexChange: changeIndex,
      ),
      const ProfilePage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: const AppFloatingActionBottom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (index) => setState(() => _pageIndex = index),
      ),
      body: SafeArea(child: pages[_pageIndex]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
