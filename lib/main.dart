import 'package:flutter/material.dart';
import 'package:my_version_of_multiprovider/home_page.dart';
import 'package:my_version_of_multiprovider/models.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          StreamProvider(
              create:(_)=> Stream<String>.periodic(
                const Duration(seconds: 1),
                (_) => now(),
              ),
              initialData: now()),
          StreamProvider(
              create:(_)=> Stream<String>.periodic(
                const Duration(seconds: 10),
                (_) => now(),
              ),
              initialData: now()),
        ],
        child:MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        home: const HomePage(),
    ),);
  }
}

String now()=> DateTime.now().toIso8601String();
