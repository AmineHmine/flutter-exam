part of 'livre_bloc.dart';

@immutable
abstract class LivreState {
  late List<Livre> livres;
}

class LivreLoading extends LivreState {}
class LivreLoaded extends LivreState {
  List<Livre> livres;
  LivreLoaded({required this.livres});
}
class livreError extends  LivreState{
  String message;
  livreError({required this.message});
}

