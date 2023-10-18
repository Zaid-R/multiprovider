// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_version_of_multiprovider/models.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ShowWidget extends StatelessWidget {
  final Color color;
  final bool isSeconds;
  ShowWidget({
    Key? key,
    required this.color,
    required this.isSeconds,
  }) : super(key: key);
  //var provider;
  @override
  Widget build(BuildContext context) {
    
    final  provider = context.watch<String>();
    return Container(
      color: color,
      height: 100,
      alignment: Alignment.center,
      child: Text(provider),
    );
  }
}
