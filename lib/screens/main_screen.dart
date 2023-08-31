import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platina/screens/dialogs/menu.dart';
import 'package:platina/res/constants.dart';
import 'package:platina/res/images.dart';
import 'package:platina/screens/dialogs/search.dart';
import 'package:platina/screens/home_screen/home_screen.dart';

import '../res/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> menuSearchKey = GlobalKey();
  int _currentPage = 0;
  String? dialog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: SvgPicture.asset(menu),
              onPressed: () {
                setState(() {
                  dialog = menu;
                  if (menuSearchKey.currentState?.isDrawerOpen == false) {
                    menuSearchKey.currentState?.openDrawer();
                  } else {
                    menuSearchKey.currentState?.openEndDrawer();
                  }
                });
              },
            );
          },
        ),
        title: Center(child: SvgPicture.asset(logo)),
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  dialog = search;
                  if (menuSearchKey.currentState?.isDrawerOpen == false) {
                    menuSearchKey.currentState?.openDrawer();
                  } else {
                    menuSearchKey.currentState?.openEndDrawer();
                  }
                });
              },
              child: SvgPicture.asset(search))
        ],
      ),
      body: Scaffold(
        drawerScrimColor: shadow,
        key: menuSearchKey,
        drawer: dialog == menu ? const DrawerMenu() : const Search(),
        body: const HomeScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: mainColor,
        currentIndex: _currentPage,
        onTap: (index) => onTap(index),
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        unselectedItemColor: secondaryText,
        unselectedLabelStyle: textStyleW500Size12,
        selectedLabelStyle: TextStyle(
            color: mainColor,
            fontSize: 12,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(home),
            label: 'Асосий',
            activeIcon: SvgPicture.asset(
              home,
              color: mainColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(news),
            label: 'Лента',
            activeIcon: SvgPicture.asset(
              news,
              color: mainColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(trendingUp),
            label: 'Оммабоп',
            activeIcon: SvgPicture.asset(
              trendingUp,
              color: mainColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(fileDocument),
            label: 'Мақола',
            activeIcon: SvgPicture.asset(
              fileDocument,
              color: mainColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(playCircle),
            label: 'Видео',
            activeIcon: SvgPicture.asset(
              playCircle,
              color: mainColor,
            ),
          ),
        ],
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      _currentPage = index;
    });
  }
}
