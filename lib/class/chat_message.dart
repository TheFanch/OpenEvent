import 'individu.dart';

class chat_message {
  //variable de la class chat_message
  Individu autor;
  int id;
  String content;

  //Constructeur de la class chat_message
  chat_message(this.autor, this.id, this.content) {}

  //Les Getters de la class chat message
  Individu getAutor() {
    return this.autor;
  }

  int getId() {
    return this.id;
  }

  String getContent() {
    return this.content;
  }

  //Les Setters de la class chat_message
  setAutor(Individu autor) {
    this.autor = autor;
  }

  setId(int id) {
    this.id = id;
  }

  setContent(String content) {
    this.content = content;
  }
}
