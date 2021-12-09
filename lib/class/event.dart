import 'package:open_event/class/individu.dart';

class event {
  //variables de la class event
  String libelle;
  String lieu;
  individu autor;
  DateTime date;
  int id;

  //constructeur de la class event
  event(this.libelle, this.lieu, this.autor, this.date, this.id) {}

  //Les getters de la class event
  String getLibelle() {
    return this.libelle;
  }

  String getLieu() {
    return this.lieu;
  }

  individu getAutor() {
    return this.autor;
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

  setAutor(individu autor) {
    this.autor = autor;
  }

  setDate(DateTime date) {
    this.date = date;
  }

  setId(int id) {
    this.id = id;
  }
}
