import 'package:demo_1/model/user_model.dart';
import 'package:flutter/material.dart';
import '../widget/card_item.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Demo'),
      ),
      body: Column(
        children: [
          for (Map map in listUser)
            cardItem(
              image: map['profile'],
              name: map['name'],
              age: map['age'],
            )
        ],
      ),
    );
  }
}
