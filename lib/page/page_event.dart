
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:open_event/class/event.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError('class EventPage from page_event.dart');
  }
  
}

/**
 * display list of events
 */
class EventsSection extends StatelessWidget {

  List events = [];

  EventsSection({Key? key, required this.events}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              children: [
                Text (
                  events.length.toString() + ' events founds' ,
                  style: GoogleFonts.nunito (
                    color: Colors.black ,
                    fontSize: 15,
                  )
                )
              ]
            )
          ),
          Column(
            children: events.map((event) =>
              EventCard(event)
            ).toList(),
          )
        ]
      )
    );
  }

}

/**
 * display block for event details
 */
class EventCard extends StatelessWidget {
  OpenEvent event;
  EventCard(this.event);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      //height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.lime,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3)
          )
        ]
      ),
      child: Column(
        children: [
          Text(
            event.libelle,
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w800
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text(
                  event.lieu,
                  //style: GoogleFonts.nunito(fontWeight: FontWeight.w400),
                ),
                Text(
                  DateFormat('EEE d MMM yy').format(event.date),
                )
            ]
          ),
          Text(
            event.author.nom,
            style: GoogleFonts.comicNeue(
              fontSize: 18,
              fontWeight: FontWeight.w400
            ),
          )
        ],
      )
    );
    // TODO: implement build
    throw UnimplementedError('EventCard');
  }

}