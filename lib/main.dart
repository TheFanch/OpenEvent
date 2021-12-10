import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:open_event/data/data_events.dart';
import 'package:open_event/page/page_event.dart';
import 'package:open_event/page/page_menu.dart';
import 'package:open_event/page/parts/gen_app_bar.dart';

import 'class/event.dart';
import 'class/individu.dart';
import 'data/data_individu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Events',
      home: MyHomePage(title: 'Open Events'),
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
      appBar: GenAppBar(title: title, isHomepage: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EventsSection(events: getWeekEvents()),
          ],
        )
      ),
    );
  }

  List getWeekEvents() {
    print('build events list');
    String pattern = 'yyyy-MM-dd HH:mm:ss';
    var list = [];
    DataEvents.events.forEach((event) {
      Individu ind = DataIndividu.getFromId(event['author']);
      DateTime date = DateFormat(pattern).parse(event['date']);
      list.add(OpenEvent(event['libelle'], event['lieu'], ind, date, event['id']));
    });
    return list;
  }
}