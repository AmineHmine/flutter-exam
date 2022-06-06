import 'package:amine_bpi/bloc/livre_bloc/livre_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/button_reload.dart';
import '../widgets/buttons_bar.dart';
import '../widgets/livres_list.dart';

class LivresPage extends StatelessWidget {
  const LivresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Livres")),
          body: Column(
              children: [
          BlocBuilder<LivreBloc,LivreState>(
            builder: (context, state) {
              return Container(
                padding: EdgeInsets.all(10),
                child: ButtonsBar(),
              );
            }),
      BlocBuilder<LivreBloc,LivreState>(
      builder: (context, state) {
      if(state is LivreLoading){
          return CircularProgressIndicator();
      }else if(state is LivreLoaded){
        return Expanded(
          child: LivreListView(state: state),
        );
      }else if(state is livreError){
        return Column(
          children: [
            Text("error"),
            ButtonReload(),
          ],
        );
      }
      else{
        return Center(child: Text("Aucun élément"),);
      }
      }),

    ])
    ,
    );
  }
}
