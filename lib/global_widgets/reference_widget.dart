/*
import 'dart:math';
import 'package:flutter/material.dart';


final List<StudentsModel> items = [
  StudentsModel(district: "asdasdas", country: "sgchaB", phn: "hachascjcsb"),
  StudentsModel(
      district: "wudhiqu",
      country: "kjxsas",
      firstname: "kjcja",
      lastname: "oiwjoid"),
  StudentsModel(
      district: "wqdiwd",
      country: "ajksdkajsn",
      phn: "oiudqoij921",
      id: "KAslk",
      pincode: "uhcis",
      email: "kjshcasjnas",
      lastname: "skjcjkanx",
      firstname: "skcjajn"),
  StudentsModel(district: "wudhiqu", country: "kjxsas"),
  StudentsModel(district: "asdasdas", country: "sgchaB", phn: "hachascjcsb"),
  StudentsModel(
    district: "wudhiqu",
  ),
  StudentsModel(
      district: "wqdiwd",
      country: "ajksdkajsn",
      phn: "oiudqoij921",
      id: "KAslk",
      pincode: "uhcis",
      email: "kjshcasjnas",
      lastname: "skjcjkanx",
      firstname: "skcjajn"),
  StudentsModel(district: "wudhiqu", country: "kjxsas"),
];

void main() {
  runApp(MaterialApp(
    home: UniformCard(data: items),
  ));
}

class UniformCard extends StatelessWidget {
  final List<StudentsModel> data;

  const UniformCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var fontSize = size.width * 0.02;
    final maxHeight = calculateMaxCardHeight(data, fontSize);

    return Scaffold(
      body: GridView.builder(
        itemCount: data.length,
        itemBuilder: (context, i) {
          return Card(
            child: Container(
              height: maxHeight,
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (data[i].district != null)
                    Expanded(
                      child: Text(
                        'District: ${data[i].district}',
                        style: TextStyle(fontSize: fontSize),
                      ),
                    ),
                  if (data[i].country != null)
                    Expanded(
                      child: Text(
                        'Country: ${data[i].country}',
                        style: TextStyle(fontSize: fontSize),
                      ),
                    ),
                  if (data[i].phn != null)
                    Expanded(
                      child: Text(
                        'Phone: ${data[i].phn}',
                        style: TextStyle(fontSize: fontSize),
                      ),
                    ),
                  if (data[i].id != null)
                    Expanded(
                      child: Text(
                        'ID: ${data[i].id}',
                        style: TextStyle(fontSize: fontSize),
                      ),
                    ),
                  if (data[i].pincode != null)
                    Expanded(
                      child: Text(
                        'Pincode: ${data[i].pincode}',
                        style: TextStyle(fontSize: fontSize),
                      ),
                    ),
                  if (data[i].email != null)
                    Expanded(
                      child: Text(
                        'Email: ${data[i].email}',
                        style: TextStyle(fontSize: fontSize),
                      ),
                    ),
                  if (data[i].lastname != null)
                    Expanded(
                      child: Text(
                        'Lastname: ${data[i].lastname}',
                        style: TextStyle(fontSize: fontSize),
                      ),
                    ),
                  if (data[i].firstname != null)
                    Expanded(
                      child: Text(
                        'Firstname: ${data[i].firstname}',
                        style: TextStyle(fontSize: fontSize),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: maxHeight),
      ),
    );
  }
}

double calculateMaxCardHeight(List<StudentsModel> data, double fSize) {
  double maxHeight = 0;
  final textPainter = TextPainter(
    textDirection: TextDirection.ltr,
  );

  for (var item in data) {
    String combinedText = [
      if (item.district != null) 'District: ${item.district}',
      if (item.country != null) 'Country: ${item.country}',
      if (item.phn != null) 'Phone: ${item.phn}',
      if (item.id != null) 'ID: ${item.id}',
      if (item.pincode != null) 'Pincode: ${item.pincode}',
      if (item.email != null) 'Email: ${item.email}',
      if (item.lastname != null) 'Lastname: ${item.lastname}',
      if (item.firstname != null) 'Firstname: ${item.firstname}',
    ].join('\n');

    textPainter.text = TextSpan(
      text: combinedText,
      style: TextStyle(fontSize: fSize + 12),
    );
    textPainter.layout(maxWidth: 600);
    maxHeight = max(maxHeight, textPainter.height);
  }
  print("++++++++++++++$fSize");
  print("====$maxHeight");
  return maxHeight;
}
class StudentsModel{

  final String? firstname;
  final String? lastname;
  final  String? email;
  final String? id;
  final String? district;
  final String? phn;
  final String? pincode;
  final String? country;

  StudentsModel({this.country,this.district,this.email,this.firstname,this.id,this.lastname,this.phn,this.pincode});

}

 */
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentsModel {
  final String? firstname;
  final String? lastname;
  final String? email;
  final String? id;
  final String? district;
  final String? phn;
  final String? pincode;
  final String? country;
  final String? image;

  StudentsModel({
    this.country,
    this.district,
    this.email,
    this.firstname,
    this.id,
    this.lastname,
    this.phn,
    this.pincode,
    this.image,
  });
}

final List<StudentsModel> items = [
  StudentsModel(
    district: "asdastdufghvhfugutfhyvubrgjhjgjvjsyj\njjvbgfvbrjhgvbhvr ffcdas",
    country: "sgcjjjjjjjjjjj\njjjjjjjjjjjjjjjjjjjjjj\njjjjjjjjjjjjjjjjjjjjjjjjjjjjj\njjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjhaB",
    phn: "hachascj\njjjcsb",
    image: "assets/images/image1.jpeg",
  ),
  StudentsModel(
    district: "wudhiqu",
    country: "kjxsas",
    firstname: "kjj\njjcja",
    lastname: "oiwjoid",
    image: "assets/images/image1.jpeg",
  ),
  StudentsModel(
    district: "wqdiwddddddddddddddddddddddddddd",
    country: "ajksdkajsn",
    phn: "oiudqoij921",
    id: "KAslk",
    pincode: "uhcis",
    email: "kjshcasjnas",
    lastname: "skjcjkanx",
    firstname: "skcjajn",
    image: "assets/images/image1.jpeg",
  ),
  StudentsModel(
    district: "wudhiqu",
    country: "kjxsas",
    image: "assets/images/image1.jpeg",
  ),
  StudentsModel(
    district: "asdasdas",
    country: "sgchaB",
    phn: "sajinsaji",
    image: "assets/images/image1.jpeg",
  ),
  StudentsModel(
    district: "sajinsaji",
    image: "assets/images/image1.jpeg",
  ),
  StudentsModel(
    district: "sajindffdfdfdf",
    country: "sajindffdfdfdf",
    phn: "sajindffdfdfdf",
    id: "sajindffdfdfdf",
    pincode: "sajindffdfdfdf",
    email: "amos",
    lastname: "amos",
    firstname: "amos",
    image: "assets/images/image1.jpeg",
  ),
  StudentsModel(
    district: "wudhiqu",
    country: "kjxsas",
    image: "assets/images/image1.jpeg",
  ),
];


void main() {
  runApp(MaterialApp(
    home: UniformCard(data: items),
  ));
}

class UniformCard extends StatelessWidget {
  final List<StudentsModel> data;

  const UniformCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    var fontSize = size.width * 0.02;
    final maxHeight = calculateMaxCardHeight(data, fontSize);

    return Scaffold(
      body: GridView.builder(
        itemCount: data.length,
        itemBuilder: (context, i) {
          return Card(
            child: Container(
              height: maxHeight,
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  if (data[i].image != null)
                    Expanded(
                      child: Image.asset(
                        data[i].image!,
                        width: size.width*0.2,
                        height: size.height*0.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  SizedBox(width: size.width*0.025),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (data[i].district != null)
                            Text(
                              'District: ${data[i].district}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                          if (data[i].country != null)
                            Text(
                              'Country: ${data[i].country}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                          if (data[i].phn != null)
                            Text(
                              'Phone: ${data[i].phn}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                          if (data[i].id != null)
                            Text(
                              'ID: ${data[i].id}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                          if (data[i].pincode != null)
                            Text(
                              'Pincode: ${data[i].pincode}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                          if (data[i].email != null)
                            Text(
                              'Email: ${data[i].email}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                          if (data[i].lastname != null)
                            Text(
                              'Lastname: ${data[i].lastname}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                          if (data[i].firstname != null)
                            Text(
                              'Firstname: ${data[i].firstname}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: maxHeight),
      ),
    );
  }
}

double calculateMaxCardHeight(List<StudentsModel> data, double fSize) {
  double maxHeight = 0;
  final textPainter = TextPainter(
    textDirection: TextDirection.ltr,
  );

  for (var item in data) {
    String combinedText = [
      if (item.district != null) 'District: ${item.district}',
      if (item.country != null) 'Country: ${item.country}',
      if (item.phn != null) 'Phone: ${item.phn}',
      if (item.id != null) 'ID: ${item.id}',
      if (item.pincode != null) 'Pincode: ${item.pincode}',
      if (item.email != null) 'Email: ${item.email}',
      if (item.lastname != null) 'Lastname: ${item.lastname}',
      if (item.firstname != null) 'Firstname: ${item.firstname}',
    ].join('\n');

    textPainter.text = TextSpan(
      text: combinedText,
      style: TextStyle(fontSize: fSize + 12),
    );
    textPainter.layout(maxWidth: 600);
    maxHeight = max(maxHeight, textPainter.height);
  }
  print("++++++++++++++$fSize");
  print("====$maxHeight");
  return maxHeight;
}








