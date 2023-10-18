import 'package:flutter/material.dart';
import 'package:my_version_of_multiprovider/models.dart';
import 'package:my_version_of_multiprovider/show_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiProvider(
        providers: [
          StreamProvider.value(
              value: Stream<Seconds>.periodic(
                const Duration(seconds: 1),
                (_) => Seconds(),
              ),
              initialData: Seconds()),
          StreamProvider.value(
              value: Stream<Minutes>.periodic(
                const Duration(seconds: 10),
                (_) => Minutes(),
              ),
              initialData: Minutes()),
        ],
        child: Row(
          children: [
            ShowWidget(color: Colors.yellow, isSeconds: true),
            ShowWidget(
              color: Colors.blue,
              isSeconds: false,
            ),
          ].map((e) => Expanded(child: e)).toList(),
        ),
      ),
    );
  }
}
