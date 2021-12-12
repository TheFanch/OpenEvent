import 'package:open_event/class/individu.dart';

class DataIndividu {
  static List individus = [
    {
      'id': 1,
      'nom': 'Boulain',
      'prenom': 'Vincent',
    },
    {
      'id': 2,
      'nom': 'Thibaudeau',
      'prenom': 'François'
    },
    {
      'id': 3,
      'nom': 'Tarquis',
      'prenom': 'Benjamin'
    },
    {
      'id': 4,
      'nom': 'Skywalker',
      'prenom': 'Luke'
    },
    {
      'id': 5,
      'nom': 'Tempest',
      'prenom': 'Limule'
    }
  ];

  static Individu? getFromId(int id) {
    //int l = individus.length;
    //print('individus.length $l');
    Individu? ind;
    int i = 0;
    bool found = false;
    do {
      //print('individus[$i]');
      if(individus[i]['id'] == id) {
        ind = Individu(individus[i]['nom'], individus[i]['prenom'], individus[i]['id']);
        found = true;
      }
      i++;
    } while(i < individus.length || !found);
    return ind;
  }

  static List getListFromIds(List inds) {
    List partenaires = [];
    for(int i = 0; i < inds.length; i++) {
      individus.forEach((element) {
        if(element['id'] == inds[i]) {
          partenaires.add(getFromId(element['id']));
        }
      });
    }
    return partenaires;
  }
}