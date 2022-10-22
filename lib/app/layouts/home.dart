import 'package:flutter/material.dart';
import 'package:spotiplay/app/widgets/bottom_menu_hideable.dart';
import 'package:spotiplay/app/core/style.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  final BottomMenuHideable floattingMenu = BottomMenuHideable(
    duration: const Duration(milliseconds: 300),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Style.PRIMARY,
      unselectedItemColor: Colors.white,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.BLACK,
      bottomNavigationBar: floattingMenu,
      body: CustomScrollView(
        controller: floattingMenu.controller,
        slivers: [
          SliverAppBar(
            backgroundColor: Style.BLACK,
            floating: true,
            centerTitle: false,
            title: Text(
              "Home",
              style: Style.TEXT_LG_WHITE_BOLD.copyWith(
                fontSize: 24,
                letterSpacing: -2,
              ),
            ),
            actions: [
              Row(
                children: const [
                  Text(
                    "with Spotify API",
                    style: Style.TEXT_SM_WHITE,
                  ),
                  SizedBox(width: Style.PADDING),
                  Image(
                    image: AssetImage('assets/empty/placeholder.png'),
                    fit: BoxFit.cover,
                    height: 30,
                  ),
                  SizedBox(width: Style.PADDING),
                ],
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([widget.child]),
          ),
        ],
      ),
    );
  }
}
