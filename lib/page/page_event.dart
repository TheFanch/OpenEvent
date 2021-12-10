
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
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
          Text(
            events.length.toString() + ' founds',
            style: GoogleFonts.nunito(
              color: Colors.black,
              fontSize: 15
            ),
          )
        ],
      ),
    );
  }

}

/**
 * display block for event details
 */
class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}