
import 'package:amine_bpi/bloc/livre_bloc/livre_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonLivre extends StatelessWidget {
  final LivreEvent livreEvent;
  final String text;
  const ButtonLivre({Key? key,required this.livreEvent,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      context.read<LivreBloc>().add(livreEvent);
    }, child: Text(text),
      style: ElevatedButton.styleFrom(primary: (context.read<LivreBloc>().lastEvent ==text)? Colors.amber:Colors.red),);
  }
}
