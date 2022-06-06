import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/adherent_model.dart';
import '../../repositories/adherent_repository.dart';

part 'adherent_event.dart';
part 'adherent_state.dart';

class AdherentBloc extends Bloc<AdherentEvent, AdherentState> {
  AdherentRepository adherentRepository;
  String lastAdherentEvent="";
  AdherentBloc({required this.adherentRepository}) : super(AdherentLoading()) {
    on<FetchAllAdherent>((event, emit) async{
      emit(AdherentLoading());
      List<Adherent> members =await adherentRepository.allAdherents();
      String lastAdherentEvent="All";

      emit(AdherentLoded(list: members));
      /*onError: (err)=>{
        emit(AdherentError(error: err))
      }*/
    });
  }
}
