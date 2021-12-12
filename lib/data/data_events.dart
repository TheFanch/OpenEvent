import 'package:intl/intl.dart';
import 'package:open_event/class/event.dart';
import 'package:open_event/class/individu.dart';
import 'package:open_event/data/data_posts.dart';

import 'data_individu.dart';

class DataEvents {
  static List events = [
    {
      'id': 0,
      'libelle': 'Sortie cinéma "Wargame"',
      'lieu': 'Cinéma Liberté, Brest',
      'date': '2021-11-09 18:00:00',
      'author': 1,
      'participants': [1, 2, 3],
      'maxInd': 4,
      'posts': [1, 2]
    },
    {
      'id': 1,
      'libelle': 'Salon gastronomie',
      'lieu': 'Parc des expositions, Brest',
      'date': '2021-11-18 14:00:00',
      'author': 2,
      'participants': [1, 2, 3],
      'maxInd': 4,
      'posts': [1, 2, 3]
    },
    {
      'id': 2,
      'libelle': 'Récré des 3 Curés',
      'lieu': 'Récré des 3 Curés',
      'date': '2021-11-19 09:00:00',
      'author': 3,
      'participants': [1, 3],
      'maxInd': 4,
      'posts': [2, 3]
    },
    {
      'id': 3,
      'libelle': 'Concert groupe Elek-trop-gène',
      'lieu': 'Arena, Brest',
      'date': '2021-12-09 18:00:00',
      'author': 1,
      'participants': [2, 3],
      'maxInd': 4,
      'posts': [1, 2]
    },
    {
      'id': 4,
      'libelle': 'Sortie cinéma Jurassic World III',
      'lieu': 'Cinéma Liberté, Brest',
      'date': '2022-01-04 18:00:00',
      'author': 3,
      'participants': [1, 2],
      'maxInd': 4,
      'posts': [1, 2]
    },
    {
      'id': 5,
      'libelle': 'Activité 5',
      'lieu': 'Un lieu quelconque',
      'date': '2022-01-07 14:00:00',
      'author': 2,
      'participants': [1, 2, 3],
      'maxInd': 4,
      'posts': [1, 3]
    },
    {
      'id': 6,
      'libelle': 'Activité 6',
      'lieu': 'Quelque part',
      'date': '2022-01-10 12:00:00',
      'author': 1,
      'participants': [2, 3],
      'maxInd': 4,
      'posts': [2, 3]
    },
    {
      'id': 7,
      'libelle': 'Soirée McDo',
      'lieu': '',
      'date': '2022-02-07 20:00:00',
      'author': 3,
      'participants': [1, 3],
      'maxInd': 4,
      'posts': [1, 2, 3]
    },
  ];

  static OpenEvent? getFromId(int id) {
    String pattern = 'yyyy-MM-dd HH:mm:ss';
    OpenEvent? event;
    int i = 0;
    bool found = false;
    do {
      print('OpenEvent => getFromId($i)');
      int evId = events[i]['id'];
      if(events[i]['id'] == id) {
        print("Event['$i']['id'] = $evId");
        Individu? author = DataIndividu.getFromId(events[i]['author']);
        DateTime date = DateFormat(pattern).parse(events[i]['date']);
        List participants = DataIndividu.getListFromIds(events[i]['participants']);
        List posts = DataPost.getListFromIds(events[i]['posts']);
        event = OpenEvent(
            events[i]['libelle'],
            events[i]['lieu'],
            author!,
            date,
            events[i]['id'],
            events[i]['maxInd'],
            participants,
            posts
        );
        found = true;
      }
      i++;
    } while(i < events.length || !found);
    return event;
  }

  static List getListFromIds(List eventsId) {
    List eventsCol = [];
    for(int i = 0; i < eventsId.length; i++) {
      events.forEach((element) {
        if(element['id'] == eventsId[i]) {
          eventsCol.add(getFromId(element['id']));
        }
      });
    }
    return eventsCol;
  }}