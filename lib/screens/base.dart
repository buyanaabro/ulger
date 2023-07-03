import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ulgermn/providers/common.dart';
import 'package:ulgermn/screens/favorite.dart';
import 'package:ulgermn/screens/home.dart';
import 'package:ulgermn/screens/profile.dart';
import 'package:ulgermn/screens/ulgers.dart';

class BasePage extends StatefulWidget {
  BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final List<Widget> _totalPage = [
    HomePage(),
    UlgersPage(),
    FavoritePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(
      builder: ((context, provider, child) {
        return Scaffold(
          backgroundColor: Color(0xff001f34),
          body: SafeArea(child: _totalPage[provider.currentIdx]),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.amber,
            selectedFontSize: 12,
            currentIndex: provider.currentIdx,
            onTap: provider.changeCurrentIdx,
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                  label: "Ulgers",
                  icon: Icon(
                    Icons.book,
                  )),
              BottomNavigationBarItem(
                  label: "Favorite",
                  icon: Icon(
                    Icons.menu,
                  )),
              BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(
                    Icons.person,
                  )),
            ],
          ),
        );
      }),
    );
  }
}
