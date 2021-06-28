import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/pages/home_page.dart';
import 'package:spotify_ui/pages/search_page.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Theme.of(context).iconTheme.color,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.library_music), label: 'Your Library'),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index){
            case 0:
              return HomePage();
            case 1:
              return SearchPage();
            case 2:
              return Text('2');
            default:
              return Text('default');
          }
        },
      ),
    );
  }
}