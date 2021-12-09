import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_event/page/page_login.dart';

class MainMenu extends StatelessWidget {
  MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      color: Colors.greenAccent,
      itemBuilder: (BuildContext context) => [
        PopupMenuItem<int>(
          value: 0,
          child: Text('Home'),
        ),
        PopupMenuItem<int>(
          value: 1,
          child: Text('Login'),
        ),
        PopupMenuItem<int>(
          value: 2,
          child: Text('Profile'),
        ),
        PopupMenuItem(
          value: 3,
          child: Text('My Event')
        )
      ],
      onSelected: (item) => { SelectedItem(context, item) },
    );
  }

  void SelectedItem(BuildContext context, item) {
    switch(item) {
      case 0:
        print('Homepage');
        LoginPage();
        break;
      case 1:
        print('Login');
        LoginPage();
        break;
      case 2:
        print('Profile');
        break;
      case 3:
        print('My Envent');
        break;
    }
  }
}