import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:getxbasic/counter_app/controller/counter.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  final CounterController controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => controller.num1.value > 0
              ? CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black,
                  child: Text(
                    '${controller.num1}',
                    style: const TextStyle(color: Colors.white, fontSize: 50),
                  ),
                )
              : showNegattiveError()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              child: MaterialButton(
                color: Colors.amber,
                onPressed: () {
                  if (controller.num1.value > 0) {
                    controller.decrement(controller.num1.value -= 1);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.remove, color: Colors.white, size: 30),
                    Text("Decrement")
                  ],
                ),
              ),
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          }),
    );
  }

  // show widget if user reaches the value at 0 and try to decrement that

  Widget showNegattiveError() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
              color: Colors.red, width: 2, style: BorderStyle.solid)),
      child: const Text("Negative Value Not Allowed !",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50)),
    );
  }
}
