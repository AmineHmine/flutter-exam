import 'package:amine_bpi/bloc/adherent_bloc/adherent_bloc.dart';
import 'package:amine_bpi/bloc/livre_bloc/livre_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/adherent_list.dart';
import '../widgets/button_reload.dart';
import '../widgets/buttons_bar.dart';

class AdherentPage extends StatelessWidget {
  const AdherentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Members")),
      body: Column(children: [
        BlocBuilder<AdherentBloc, AdherentState>(builder: (context, state) {
          return Container(
            padding: EdgeInsets.all(10),
            child: ButtonsBar(),
          );
        }),
        BlocBuilder<AdherentBloc, AdherentState>(builder: (context, state) {
          if (state is AdherentLoading) {
            return CircularProgressIndicator();
          } else if (state is AdherentLoded) {
            return Expanded(
              child: AdherentListView(state: state),
            );
          } else if (state is AdherentError) {
            return Column(
              children: [
                Text("error"),
                ButtonReload(),
              ],
            );
          } else {
            return Center(
              child: Text("Aucun élément"),
            );
          }
        }),
      ]),
    );
  }
}
