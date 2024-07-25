import 'package:flutter/material.dart';
import 'package:todo/widget/greet_widget.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 70, left: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.white, Colors.white54, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: GreetWidget(),
              ),

              SizedBox(height: 10),

              // todo :- display name of user + motivational quote just after name with animation
            ],
          )),
    );
  }
}
