import 'package:flutter/material.dart';
import 'package:todo/widget/greet_widget.dart';
import 'package:todo/widget/category_row_widget.dart';
import 'package:todo/controller/switch_button_controller.dart';
import 'package:get/get.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SwitchButtonController My_Controller =
        Get.put(SwitchButtonController());

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent.shade400,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.pink, Colors.purple, Colors.yellowAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: const GreetWidget(),
            ),

            const SizedBox(height: 10),

            // todo :- display name of user + motivational quote just after name with animation

            const SizedBox(height: 10),

            const CategoryRowWidget(),

            SizedBox(
              height: 20,
            ),
            Obx(() {
              return CheckboxListTile(
                activeColor: Colors.greenAccent.shade400,
                title: Text('make you5ube '),
                value: My_Controller.suggest.value,
                onChanged: (newValue) {
                  if (newValue != null) {
                    My_Controller.suggest.value = newValue;
                  }
                },
                controlAffinity: ListTileControlAffinity.leading,
              );
            })
          ],
        ),
      ),
    );
  }
}
