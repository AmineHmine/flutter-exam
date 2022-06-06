import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/livre_bloc/livre_bloc.dart';
import 'button_livre.dart';
class ButtonsBar extends StatelessWidget {
  const ButtonsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonLivre(livreEvent:  FetchLivre(), text: "All"),],
    );
  }
}
