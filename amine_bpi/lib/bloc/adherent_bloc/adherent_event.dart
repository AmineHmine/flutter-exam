part of 'adherent_bloc.dart';

@immutable
abstract class AdherentEvent {}

class FetchAllAdherent extends AdherentEvent{}

class DeleteAdherent extends AdherentEvent{
  int id_adherent;
  DeleteAdherent({required this.id_adherent});
}
