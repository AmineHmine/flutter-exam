import 'package:amine_bpi/bloc/livre_bloc/livre_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonReload extends StatelessWidget {

  const ButtonReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      LivreBloc contactBloc=context.read<LivreBloc>();
      if(contactBloc.lastEvent=="All"){
        context.read<LivreBloc>().add(FetchLivre());
      }

    }, child: Text("Reload"));
  }
}
