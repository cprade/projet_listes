import 'package:flutter/material.dart';
import 'package:projet_listes/data_source.dart';
import 'package:projet_listes/informations.dart';

class Portrait extends StatefulWidget {
  const Portrait({super.key});

  @override
  PortraitState createState() => PortraitState();
}

class PortraitState extends State<Portrait> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("La Savoie"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 50,
            color: Colors.indigoAccent,
            thickness: 1,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          final element = DataSource().allPlaces()[index];
          return ListTile(
            leading: Text((index + 1).toString()),
            title: Text(
              element.name,
              style: const TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.bold),
            ),
            trailing: Image.asset(
              element.getFolderPath(),
              width: 150,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext ctx) {
                return Informations(index: index);
              }));
            },
          );
        },
        itemCount: DataSource().allPlaces().length,
      ),
    );
  }
}
