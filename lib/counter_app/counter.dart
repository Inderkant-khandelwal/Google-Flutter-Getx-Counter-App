import "package:flutter/material.dart";
import 'package:get/get.dart';

import 'controller/counter.dart';

class CounterAppHome extends StatelessWidget {
  CounterAppHome({Key? key}) : super(key: key);

  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // note this get builder can be any where in the widgete tree
      // so dont think it should be on the top of the class
      // visit my linkedin profile
      // https://linkedin.com/in/inderkant
      body: GetBuilder<CounterController>(
          init: CounterController(),
          builder: (counterController) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(
                          "https://cdn.dribbble.com/users/1787323/screenshots/10091971/media/d43c019bfeff34be8816481e843ea8c1.png?compress=1&resize=400x300&vertical=top")),
                  const Text(
                      "Google Flutter Counter App with [GetX] by { Inderkant }",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      '${counterController.num1.value}',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      width: 200,
                      child: MaterialButton(
                          minWidth: 200,
                          color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.add, color: Colors.white, size: 30),
                              Text("Increment")
                            ],
                          ),
                          onPressed: () {
                            counterController.incrementNumOne(
                                counterController.num1.value + 1);
                          }),
                    ),
                  )
                ],
              ),
            );
          }),

      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
          onPressed: () {
            Get.toNamed("/cart");
          }),
    );
  }
}
