import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/controller/switch_button_controller.dart';

class PersonalCategoryWidget extends StatelessWidget {
  const PersonalCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final SwitchButtonController My_Controller =
        Get.put(SwitchButtonController());
    return Obx(() {
      return GestureDetector(
        onTap: () {
          My_Controller.selectCategory('Personal');
        },
        child: Material(
          elevation: My_Controller.selectedCategory.value == 'Personal' ? 5 : 0,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: My_Controller.selectedCategory.value == 'Personal'
                  ? Colors.orangeAccent.shade100
                  : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Personal",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    });
  }
}

class OfficeCategoryWidget extends StatelessWidget {
  const OfficeCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final SwitchButtonController My_Controller =
        Get.put(SwitchButtonController());
    return Obx(() {
      return GestureDetector(
          onTap: () {
            My_Controller.selectedCategory('Office');
          },
          child: Material(
              elevation:
                  My_Controller.selectedCategory.value == 'Office' ? 5 : 0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: My_Controller.selectedCategory.value == 'Office'
                      ? Colors.orangeAccent.shade100
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text("Office",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    )),
              )));
    });
  }
}

class CollegeCategoryWidget extends StatelessWidget {
  const CollegeCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final SwitchButtonController My_Controller =
        Get.put(SwitchButtonController());
    return Obx(() {
      return GestureDetector(
          onTap: () {
            My_Controller.selectedCategory('College');
          },
          child: Material(
              elevation:
                  My_Controller.selectedCategory.value == 'College' ? 5 : 0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: My_Controller.selectedCategory.value == 'College'
                      ? Colors.orangeAccent.shade100
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text("College",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    )),
              )));
    });
  }
}
