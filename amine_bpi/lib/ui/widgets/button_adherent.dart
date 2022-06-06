
import 'package:amine_bpi/bloc/adherent_bloc/adherent_bloc.dart';
import 'package:amine_bpi/bloc/livre_bloc/livre_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonAdherent extends StatelessWidget {
  final AdherentEvent adherentEvent;
  final String text;
  const ButtonAdherent({Key? key,required this.adherentEvent,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      context.read<AdherentBloc>().add(adherentEvent);
    }, child: Text(text),
      style: ElevatedButton.styleFrom(primary: (context.read<AdherentBloc>().lastAdherentEvent == text)? Colors.amber:Colors.blue),);
  }
}
