import 'package:flutter/material.dart';
import 'package:projet_listes/data_source.dart';
import 'package:projet_listes/informations.dart';

class Paysage extends StatefulWidget {
  const Paysage({super.key});

  @override
  PaysageState createState() => PaysageState();
}

class PaysageState extends State<Paysage> {
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
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          final element = DataSource().allPlaces()[index];
          return InkWell(
            child: Card(
              color: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Image.asset(
                        element.getFolderPath(),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10, height: 10),
                    Expanded(
                        child: Text(
                      element.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext ctx) {
                    return Informations(index: index);
                  },
                ),
              );
            },
          );
        },
        itemCount: DataSource().allPlaces().length,
      ),
    );
  }
}
