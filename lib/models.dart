import 'package:flutter/material.dart';

String now()=> DateTime.now().toIso8601String();

@immutable
class Seconds{
  final String lastUpdate;
  Seconds():lastUpdate = now();
}

class Minutes extends Seconds{}