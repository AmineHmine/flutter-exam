import 'package:amine_bpi/bloc/livre_bloc/livre_bloc.dart';
import 'package:amine_bpi/repositories/adherent_repository.dart';
import 'package:amine_bpi/repositories/livre_repository.dart';
import 'package:amine_bpi/ui/pages/adherent_page.dart';
import 'package:amine_bpi/ui/pages/home_page.dart';
import 'package:amine_bpi/ui/pages/livres_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/adherent_bloc/adherent_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
         providers: [
          BlocProvider<LivreBloc>(
            create: (context) => LivreBloc(livreRepository: LivreRepository()),
          ),
          BlocProvider<AdherentBloc>(
            create: (context) =>
                AdherentBloc(adherentRepository: AdherentRepository()),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.green
          ),
          routes: {
            "/":(context)=>HomePage(),
            "/livres":(context)=> LivresPage(),
            "/members":(context)=> AdherentPage(),
          },
        ));
  }
}