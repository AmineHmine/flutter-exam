part of 'adherent_bloc.dart';

@immutable
abstract class AdherentState {
  late List<Adherent> adherents;
}

class AdherentLoading extends AdherentState {}

class AdherentLoded extends AdherentState{
  List<Adherent> list;
  AdherentLoded({required this.list});
}

class AdherentError extends AdherentState{
  String error;
  AdherentError({required this.error});
}