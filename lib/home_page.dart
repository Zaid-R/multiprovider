import 'package:flutter/material.dart';
import 'package:my_version_of_multiprovider/show_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Row(
          children: [
            ShowWidget(color: Colors.yellow, isSeconds: true),
            ShowWidget(color: Colors.blue, isSeconds: false),
          ].map((e) => Expanded(child: e)).toList(),
        ),
    );
  }
}
