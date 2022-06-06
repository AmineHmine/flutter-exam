import 'package:amine_bpi/bloc/livre_bloc/livre_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LivreListView extends StatelessWidget {
  final LivreState state;
  const LivreListView({Key? key,required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context,index)=>Divider(color: Colors.grey,height: 3),
        itemCount: state.livres.length,
        itemBuilder: (context,index){
          return ListTile(
            onTap: (){
              
            },
            leading: CircleAvatar(child: Text("${state.livres[index].titre}")),
            title: Text(state.livres[index].titre),
          ) ;
        });
  }
}
