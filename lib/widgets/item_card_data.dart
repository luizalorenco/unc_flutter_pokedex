import 'package:flutter/material.dart';

class ItemCardData extends StatelessWidget {
  final int id;
  final String name;

  const ItemCardData({Key? key, required this.id, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "${id}",
            style: const TextStyle(
                fontSize: 21, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 250,
            child: Text(
              "${name[0].toUpperCase()}${name.substring(1)}",
              style: const TextStyle(
                fontSize: 21,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}