import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //definition de la connection a la firebase (elle est en final, donc en privé)
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Connection en anonyme
  Future SingInAnonyme() async {
    try {
      UserCredential res = await _auth.signInAnonymously();
      User? user = res.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //TODO Connecter avec sont email

  //TODO Connecter avec google(pas sur a cause de la SHA1 key)

  //TODO Enregistrement en anonyme

  //TODO Enregistrement avec sont email

  //TODO Enregistrement avec sont compte google (pas sur a cause du probléme de génération de la SHA1 key)
}
