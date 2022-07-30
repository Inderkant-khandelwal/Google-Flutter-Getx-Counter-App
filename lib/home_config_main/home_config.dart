import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../cart/cart.dart';
import '../counter_app/counter.dart';

class HomeConfig extends StatelessWidget {
  const HomeConfig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterAppHome(),
        title: "Simple Counter Getx",
        theme: ThemeData.dark(),
        getPages: [
          GetPage(
              name: "/cart",
              transition: Transition.circularReveal,
              page: () => Cart())
        ]);
  }
}
