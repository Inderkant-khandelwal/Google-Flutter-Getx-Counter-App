import "package:get/get.dart";

class CounterController extends GetxController {
  var num1 = RxInt(0);
  var num2 = RxInt(0);

  get numberOne {
    return num1;
  }

  incrementNumOne(val) {
    num1(val);
    update();
  }

  decrement(val) {
    num1(val);
    update();
  }

  @override
  onInit() {
    super.onInit();
    print("Inderkant init");
  }

  @override
  onReady() {
    super.onReady();
    print("Inderkant ready");
  }

  @override
  onClose() {
    super.onClose();
    print("Inderkant close");
  }
}
