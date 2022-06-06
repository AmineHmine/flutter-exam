import 'dart:async';
import 'package:amine_bpi/repositories/livre_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/livre_model.dart';

part 'livre_event.dart';
part 'livre_state.dart';

class LivreBloc extends Bloc<LivreEvent, LivreState> {
  LivreRepository livreRepository;
  String lastEvent="";
  LivreBloc({required this.livreRepository}) : super(LivreLoading()) {
    on<FetchLivre>((event, emit) async {
      emit(LivreLoading());
      List<Livre> livre = await livreRepository.allLivres();
      String lastEvent="All";
      emit(LivreLoaded(livres: livre));
    });
  }
}
