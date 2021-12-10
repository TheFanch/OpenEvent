import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_event/page/parts/gen_app_bar.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenAppBar(title: 'Login', isHomepage: false),
    );
  }

}