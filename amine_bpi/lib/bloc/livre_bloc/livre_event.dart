part of 'livre_bloc.dart';

@immutable
abstract class LivreEvent {}

class FetchLivre extends LivreEvent{}

class DeleteLivre extends LivreEvent{
  int id_livre;

  DeleteLivre({required this.id_livre});
}

class FindLivre extends LivreEvent{
  String keyword;
  FindLivre({required this.keyword});
}