import 'package:flutter/material.dart';


class DetailItensTitle extends StatelessWidget {
  final int id;
  final String name;
  const DetailItensTitle({Key? key, required this.id, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}