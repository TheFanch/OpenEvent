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
    }
  ];

  static Individu getFromId(int id) {
    dynamic ind = individus.elementAt(id - 1);
    return Individu(
        ind['nom'],
        ind['prenom'],
        ind['id'].runtimeType.toString() == 'String' ? int.parse(ind['id']) : ind['id']);
  }
}