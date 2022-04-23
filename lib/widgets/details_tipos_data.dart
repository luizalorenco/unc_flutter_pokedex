import 'package:flutter/material.dart';

//Criando os detalhes da lista de tipos

class DetailTiposData extends StatelessWidget {
  const DetailTiposData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width, minHeight: 500),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 2, color: Colors.grey),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(71),
          topRight: Radius.circular(71),
        ),
      ),
      child: Column(
        children: [Text("")],
      ),
    );
  }
}