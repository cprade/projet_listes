import 'package:flutter/material.dart';
import 'package:projet_listes/orientation/paysage.dart';
import 'package:projet_listes/orientation/portrait.dart';

class OrientationWidget extends StatelessWidget {
  const OrientationWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return (orientation == Orientation.portrait)
        ? const Portrait()
        : const Paysage();
  }
}
