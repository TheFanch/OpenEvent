import 'package:open_event/class/chat_message.dart';
import 'package:open_event/class/individu.dart';
import 'package:open_event/data/data_individu.dart';

class DataPost {
  static List posts = [
    {
      'id': 1,
      'author': 1,
      'content': "commentaire 001"
    },
    {
      'id': 2,
      'author': 2,
      'content': "commentaire 002"
    },
    {
      'id': 3,
      'author': 3,
      'content': "commentaire 003"
    },
  ];

  static chat_message? getFromId(int id) {
    chat_message? post;
    int i = 0;
    bool found = false;
    do {
      if(posts[i]['id'] == id) {
        Individu? author = DataIndividu.getFromId(posts[i]['id']);
        post = chat_message(
            author!,
            posts[i]['id'],
            posts[i]['content']
        );
        found = true;
      }
      i++;
    } while(i < posts.length || !found);
    return post;
  }

  static List getListFromIds(List postsId) {
    List postsCol = [];
    for(int i = 0; i < postsId.length; i++) {
      posts.forEach((element) {
        if(element['id'] == postsId[i]) {
          postsCol.add(getFromId(element['id']));
        }
      });
    }
    return postsCol;
  }
}