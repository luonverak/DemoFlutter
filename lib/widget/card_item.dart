import 'package:flutter/material.dart';

Widget cardItem(
    {required String image, required String name, required int age}) {
  return Card(
    color: Colors.amber,
    child: ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(image),
      ),
      title: Text(name),
      subtitle: Text('$age'),
    ),
  );
}
