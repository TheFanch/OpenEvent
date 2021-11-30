import 'package:open_event/class/chat_message.dart';
import 'package:open_event/class/individu.dart';

class chat {
  //Variables de la class chat
  List<individu> participants;
  List<chat_message> messages;
  individu autor;
  int id;

  //Constructeur de la class chat
  chat(this.autor, this.id, this.messages, this.participants) {}

  //Les Getters de la class chat
  List getParticipants() {
    return this.participants;
  }

  List getMessages() {
    return this.messages;
  }

  individu getAutor() {
    return this.autor;
  }

  int getId() {
    return this.id;
  }

  //Les Setters de la class chat
  setAutor(individu autor) {
    this.autor = autor;
  }

  setId(int id) {
    this.id = id;
  }

  //Fonction de la class chat

  //putParticipants -> ajouter un partiocipants dans la list participants
  putParticipants(individu participant) {
    this.participants.add(participant);
  }

  //putMessage -> ajouter un message dans la list de messages
  putMessage(chat_message message) {
    this.messages.add(message);
  }

  //delParticipant -> supprimer un participants a la listparticipants
  delParticipants(individu participant) {
    this.participants.remove(participant);
  }

  //delmessage -> supprimer un message a la listMessage
  delMessage(chat_message message) {
    this.messages.remove(message);
  }
}
