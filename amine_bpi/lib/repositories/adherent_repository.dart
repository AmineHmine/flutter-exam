import 'package:amine_bpi/models/adherent_model.dart';

abstract class ILivreRepository{
  Future<List<Adherent>> allAdherents();
  Future<void> deleteAdherent(int id_adherent);
}

class AdherentRepository implements ILivreRepository{
  List<Adherent> members=[
    Adherent(1, "hmine", "amine", "amine@gmail.com", "0604050908"),
    Adherent(2, "messi", "leo", "messi@gmail.com", "0101010101"),
    Adherent(3, "ronaldo", "cristiano", "ronaldo@gmail.com", "0707070707"),
  ];

  @override
  Future<List<Adherent>> allAdherents() {
    Future.delayed(Duration(milliseconds: 100),() {
      return members;
    },);
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAdherent(int id_adherent) {
    Future.delayed(Duration(milliseconds: 100),() {

      return members.removeWhere((element) => element.id_adherent==id_adherent);
    },);
    throw UnimplementedError();
  }

}