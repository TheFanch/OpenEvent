class Individu {
  //variables de la classe individu
  String nom;
  String prenom;
  int id;

  //constructeur de la class individu
  Individu(this.nom, this.prenom, this.id) {}

  //Les getters de la class individu
  String getNom() {
    return this.nom;
  }

  String getPrenom() {
    return this.prenom;
  }

  int getId() {
    return this.id;
  }

  //Les Setters de la class individu
  setNom(String nom) {
    this.nom = nom;
  }

  setPrenom(String prenom) {
    this.prenom = prenom;
  }

  setId(int id) {
    this.id = id;
  }

  //Methode de la class individu

  //methode _init() -> initialise un individu a vide
  _init(String nom, String prenom, int id) {
    this.nom = nom;
    this.prenom = prenom;
    this.id = id;
  }
}
