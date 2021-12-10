
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:open_event/class/event.dart';
import 'package:open_event/page/parts/gen_app_bar.dart';

class EventPage extends StatelessWidget {
  OpenEvent event;
  EventPage(this.event);

  @override
  Widget build(BuildContext context) {
    print('EventPage');
    return Scaffold(
      appBar: GenAppBar(title: 'Event Details', isHomepage: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EventCard(event),
            //EventChat(event)
          ],
        )
      )
    );
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
      child: ElevatedButton(
        style: ElevatedButton.styleFrom( primary: Colors.white ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EventPage(event))
          );
        },
        child: Container(
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
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w800
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text(
                      event.lieu,
                      style: GoogleFonts.nunito(
                        color: Colors.black
                      ),
                    ),
                    Text(
                      DateFormat('EEE d MMM yy').format(event.date),
                      style: GoogleFonts.nunito(
                        color: Colors.black
                      ),
                    )
                ]
              ),
              Text(
                event.author.nom,
                style: GoogleFonts.comicNeue(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),
              )
            ],
          )
        )
      )
    );
  }

}