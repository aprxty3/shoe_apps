import 'package:flutter/material.dart';
import 'package:shoe_apps/ui/pages/homepag/chat_page.dart';
import 'package:shoe_apps/ui/pages/homepag/favorite_page.dart';
import 'package:shoe_apps/ui/pages/homepag/profile_page.dart';

import '../../theme.dart';
import 'homepag/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Icon(
          Icons.shopping_bag,
          size: 30,
          color: primaryTextColor,
        ),
      );
    }

    Widget customBotNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: kBg4,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.home,
                    size: 25,
                    color: currentIndex == 0 ? primaryColor : primaryTextColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(right: 60, top: 10),
                  child: Icon(
                    Icons.chat,
                    size: 25,
                    color: currentIndex == 1 ? primaryColor : primaryTextColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(left: 60, top: 10),
                  child: Icon(
                    Icons.favorite,
                    size: 25,
                    color: currentIndex == 2 ? primaryColor : primaryTextColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.person,
                    size: 25,
                    color: currentIndex == 3 ? primaryColor : primaryTextColor,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return FavPage();
          break;
        case 3:
          return ProfilePage();
          break;

        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: kBg1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBotNav(),
      body: body(),
    );
  }
}
