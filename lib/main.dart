import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:open_event/data/data_events.dart';
import 'package:open_event/page/page_menu.dart';
import 'package:open_event/page/parts/gen_app_bar.dart';

import 'class/event.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Events',
      home: MyHomePage(title: 'Events Open'),
    );
  }
}

DateTime now = DateTime.now();

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenAppBar(title: title),
    );
  }

  List getWeekEvents() {
    String pattern = 'yyyy-MM-dd HH:mm:ss';
    var list = [];
    DataEvents.events.forEach((event) {
      DateTime date = DateFormat(pattern).parse(event['date']);
      list.add(Event(event['libelle'], event['lieu'], event['author'], event['date'], event['id']));
    });
    return list;
  }
}