import 'package:open_event/class/individu.dart';

class OpenEvent {
  //variables de la class event
  String libelle;
  String lieu;
  Individu author;
  DateTime date;
  int id;
  List participants = [];
  int maxParticipants;
  List posts = [];

  //constructeur de la class event
  OpenEvent(
      this.libelle,
      this.lieu,
      this.author,
      this.date,
      this.id,
      this.maxParticipants,
      this.participants,
      this.posts
      ) {}

  //Les getters de la class event
  String getLibelle() {
    return this.libelle;
  }

  String getLieu() {
    return this.lieu;
  }

  Individu getAutor() {
    return this.author;
  }

  DateTime getDate() {
    return this.date;
  }

  int getId() {
    return this.id;
  }

  //Les Setters de la class event
  setLibelle(String lib) {
    this.libelle = lib;
  }

  setLieu(String lieu) {
    this.lieu = lieu;
  }

  setAutor(Individu author) {
    this.author = author;
  }

  setDate(DateTime date) {
    this.date = date;
  }

  setId(int id) {
    this.id = id;
  }
}
