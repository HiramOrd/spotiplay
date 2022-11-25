import 'package:flutter/material.dart';
import 'package:spotiplay/app/core/style.dart';
import 'package:spotiplay/app/layouts/home/index.dart';
import 'package:spotiplay/app/views/_main/home/listener.dart';
import 'package:spotiplay/app/views/_main/options/listener.dart';
import 'package:spotiplay/app/widgets/bottom_menu_hideable.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<MainView> {
  final pagesWidgets = const [HomeListener(), OptionsListener()];
  final pagesTitles = const ["Home", "Settings"];
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    late BottomMenuHideable floattingMenu = BottomMenuHideable(
      duration: const Duration(milliseconds: 300),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Style.PRIMARY,
        unselectedItemColor: Colors.white,
        currentIndex: currentPageIndex,
        onTap: (value) {
          currentPageIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Style.BLACK,
      bottomNavigationBar: floattingMenu,
      body: CustomScrollView(
        controller: floattingMenu.controller,
        slivers: [
          HomeHeader(title: pagesTitles[currentPageIndex]),
          SliverList(
            delegate: SliverChildListDelegate([
              pagesWidgets[currentPageIndex],
            ]),
          ),
        ],
      ),
    );
  }
}
