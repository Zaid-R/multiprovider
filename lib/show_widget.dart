// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_version_of_multiprovider/models.dart';
import 'package:provider/provider.dart';

class ShowWidget extends StatelessWidget {
  final Color color;
  final bool isSeconds;
  const ShowWidget({
    Key? key,
    required this.color,
    required this.isSeconds,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return isSeconds
        ? Consumer<Seconds>(
            builder: (_, Seconds provider, __) {
              return buildCustomContainer(provider.lastUpdate);
            },
          )
        : Consumer<Minutes>(
            builder: (_, Minutes provider, __) {
              return buildCustomContainer(provider.lastUpdate);
            },
          );
  }

  Container buildCustomContainer(String value) {
    return Container(
      color: color,
      height: 100,
      alignment: Alignment.center,
      child: Text(value),
    );
  }
}
