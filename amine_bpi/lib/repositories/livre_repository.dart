import 'dart:ffi';
import 'dart:math';

import 'package:amine_bpi/models/livre_model.dart';

abstract class IAdherentRepository{
  Future<List<Livre>> allLivres();
  Future<Livre> findLivres(String keyword);
  Future<void> deleteLivre(int id_livre);
}

class LivreRepository implements IAdherentRepository{
  List<Livre> livres=[
    Livre(175, "565465", "book1", "auteurB1", DateTime(2020,5,20), 500, 250.00),
    Livre(175, "565465", "book1", "auteurB1", DateTime(2020,5,20), 500, 250.00),
    Livre(175, "565465", "book1", "auteurB1", DateTime(2020,5,20), 500, 250.00),
    Livre(175, "565465", "book1", "auteurB1", DateTime(2020,5,20), 500, 250.00),
  ];

  @override
  Future<List<Livre>> allLivres() async{
      var future= await Future.delayed(Duration(seconds: 1));
      int rand=new Random().nextInt(10);
      if(rand>5){
        return livres;
      }else{
        throw Exception("Erreur de chargement des livres");
      }
  }

  @override
  Future<void> deleteLivre(int id_livre) {
    Future.delayed(Duration(milliseconds: 100),() {

      return livres.removeWhere((element) => element.id_livre==id_livre);
    },);
    throw UnimplementedError();
  }

  @override
  Future<Livre> findLivres(String keyword) {
    Future.delayed(Duration(milliseconds: 100),() {
      return livres.firstWhere((element) => element.titre.startsWith(keyword));
    },);

    throw UnimplementedError();
  }

}