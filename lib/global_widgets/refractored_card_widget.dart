import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emergency Kit List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Emergency Kit List'),
        ),
        body: EmergencyKitList(
          kits: [
            Kit(name: 'First Aid Kit', details: 'Contains bandages, antiseptics, etc.',nameb: "gdrfx" ),
            Kit(name: 'Survival Kit', details: 'Contains food, water, and survival gear.'),
            Kit(name: 'Fire Safety Kit', details: 'Contains fire extinguisher, fire blanket, etc.',nameb: "ghdrfr"),
            Kit(name: 'Tool Kit', details: 'Contains hammer, screwdriver, and other tools.'),
            Kit(name: 'Hygiene Kit', details: 'Contains soap, sanitizer, tissues, etc.' ,detailsb: "dfxf"),
            Kit(name: 'Pet Emergency Kit', details: 'Contains pet food, water, and first aid for pets.'),
          ],
        ),
      ),
    );
  }
}

class EmergencyKitList extends StatelessWidget {
  final List<Kit> kits;

  const EmergencyKitList({Key? key, required this.kits}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kits.length,
      itemBuilder: (context, index) {
        var kit = kits[index];
        return Container(
          padding: const EdgeInsets.all(25.0),
          color: Colors.grey,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      kit.name ?? 'No name',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      kit.details ?? 'No details',
                      style: const TextStyle(fontSize: 14),

                    ),
                    Text(
                      kit.nameb ?? 'No name',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      kit.detailsb ?? 'No details',
                      style: const TextStyle(fontSize: 14),

                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Kit {
  final String? name;
  final String? details;
  final String? nameb;
  final String? detailsb;


  Kit({this.name, this.details,this.nameb, this.detailsb,});
}
/*
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: UniformCard(data: const [
      "ab\nfcdefgh\nijklmnopq\nfestuv\nfwxyz",
      "abcdefghiklmnopqrstuvwxyz",
      "m",
      "ab\nfcdefgh\nijklmnopq\nfestuv\nfwxyz",
      "m",
      "m",
      "ab\nfcdefgh\nijklmnopq\nfestuv\nfwxyz",
      "abcde\nfghijklm/nnwxyz",
      "abcd\nfefghij\nfklmno\nfpqestuvwxyz",
      "abcde\nfghijklm\nfnopqes\ntuvwxyz",
      "abcdvwxyz",
      "m",
      "m",
      "ab\nfcdefgh\nijklmnopq\nfestuv\nfwxyz",
      "m",
      "m",
      "abjklm/nnopqestuvwxyz",
      "abcdefqestuvwxyz",
      "m",
      "m",
      "abcd\ntuvwxyz",
      "abcdefgh\nijklmstuvwxyz",
      "m",
      "m",
      "abcde\nfghijklmnopqes\ntuvwxyz"
    ]),
  ));
}

class UniformCard extends StatelessWidget {
  final List<String> data;

  UniformCard({required this.data});

  @override
  Widget build(BuildContext context) {
    final maxHeight = calculateMaxCardHeight(data);

    return Scaffold(
      body: GridView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final hasAvatar = shouldShowAvatar(index);
          final avatarColor = getRandomColor();

          return Card(
            child: Container(
              height: maxHeight,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (hasAvatar)
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: avatarColor,
                      child: Text(
                        data[index].substring(0, 1).toUpperCase(),
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Text(
                      data[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Details for item ${index + 1}',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }

  bool shouldShowAvatar(int index) {
    // Define conditions to show the avatar
    return index % 3 != 0; // Example: Show avatar for all items except those at every 3rd index
  }

  Color getRandomColor() {
    final random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }
}

double calculateMaxCardHeight(List<String> data) {
  double maxHeight = 0;
  final textPainter = TextPainter(
    textDirection: TextDirection.ltr,
  );

  for (var item in data) {
    textPainter.text = TextSpan(
      text: item,
      style: TextStyle(fontSize: 16),
    );
    textPainter.layout(maxWidth: 600);
    maxHeight = max(maxHeight, textPainter.height + 40); // Adjusted for potential avatar height
  }

  return maxHeight;
}

 */
