import 'package:flutter/material.dart';
import 'package:kuis_praktikummobile/list_buku.dart';

import 'data_buku.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '123190007_KUIS',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const ListBuku(),
    );
  }
}

