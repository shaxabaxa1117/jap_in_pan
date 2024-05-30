// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:jap_in_pan/pages/intro_page.dart';
import 'package:jap_in_pan/providers/info_data_modal.dart';
import 'package:jap_in_pan/providers/pruduct_modal.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ModalHomeInfoData(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  IntroPage(),
      ),
      );
  }
}
//! Архитектурный паттерн 
