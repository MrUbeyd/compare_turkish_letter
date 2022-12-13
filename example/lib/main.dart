import 'package:compare_turkish_letter/compare_turkish_letter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final List<String> listToOrder = [
      'Muz',
      'Armut',
      'Çilek',
      'Üst',
      'Ömer',
      'Kestane',
      'Cenk',
      'Ubeyd',
      'Çek',
      'Osman',
      'İklim',
      'Senet',
      'Gar',
      'Ilgın',
    ];
    List<String> oldList = [];
    for (var element in listToOrder) {
      oldList.add(element);
    }

    CompareTurkishLetter.sortTurkishLetterList(listToOrder);

    return MaterialApp(
      title: 'Compare Turkish Letter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Compare Turkish Letter Demo',
          ),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    'List To Order',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      ...oldList.map((e) => Text(e)).toList(),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Ordered List',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      ...listToOrder.map((e) => Text(e)).toList(),
                    ],
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
