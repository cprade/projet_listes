import 'package:flutter/material.dart';
import 'package:projet_listes/data_source.dart';

class Informations extends StatefulWidget {
  int index = 0;
  Informations({super.key, required this.index});

  @override
  InformationsState createState() => InformationsState();
}

class InformationsState extends State<Informations> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final element = DataSource().allPlaces()[widget.index];
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text(element.name),
      ),
      body: SingleChildScrollView(
        child: (orientation == Orientation.portrait)
            ? infoPortrait()
            : infoPaysage(),
      ),
    );
  }

  Widget infoPortrait() {
    final element = DataSource().allPlaces()[widget.index];
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Image.asset(element.getFolderPath()),
          const SizedBox(width: 50, height: 50),
          Text(
            element.desc,
            style: const TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }

  Widget infoPaysage() {
    final element = DataSource().allPlaces()[widget.index];
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      width: size.width,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset(
              element.getFolderPath(),
            ),
          ),
          const SizedBox(width: 50, height: 50),
          Expanded(
            child: Text(
              element.desc,
              style: const TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
