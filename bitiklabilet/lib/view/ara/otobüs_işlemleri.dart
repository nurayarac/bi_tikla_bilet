

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Otobus extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> buttons = [
      TextButton.icon(
        onPressed: () {

        },
        label: const Text('Otobüsleri Saate Göre sıralama',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        icon: Icon(Icons.chevron_right),
      ),
      TextButton.icon(
        onPressed: () {

        },
        label:
        const Text('Otobüs Filtreleme',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        icon: Icon(Icons.chevron_right),
      ),

    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar Örneği',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text('Profilim'),
        ),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
              width: 2,
            ),
          ),
          child: ListView(
            children: [
              Container(
                child: buttons[0],
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                margin: EdgeInsets.only(top: 50, bottom: 10),
              ),
              Container(
                child: buttons[1],
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                margin: EdgeInsets.only(bottom: 10),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
