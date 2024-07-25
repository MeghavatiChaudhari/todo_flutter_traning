import 'package:flutter/material.dart';

class GreetWidget extends StatelessWidget {
  const GreetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Hii ,',
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ));
  }
}
