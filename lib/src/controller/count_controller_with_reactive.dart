import 'package:get/get.dart';

enum NUM {FIRST, SECOND}

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}

class CountControllerWithReactive extends GetxController {


  // obs : 반응형 관리 가능
  // RxInt
  RxString value = "".obs;
  RxDouble double = 0.0.obs;
  RxInt count = 0.obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: '최지수', age: 32).obs;
  RxList list = [].obs;

  void increase() {
    count++;
    nums(NUM.SECOND);

    // list.addAll(item);
    // list.add();
    // list.addIf(condition, item);
  }

  void putNumber(int value) {
    // input 된 value를 count에 대입해서 count 변경
    count(value);
  }

  // getX 라이프사이클
  // 최초 한번만 호출하기에 수정후에 반영하려면 다시 재호출
  @override
  void onInit() {
    // ever 매번 값이 변경될 때 마다 값이 호출
    // reactive 반응형일때만 가능
    // ever(count, (callback) => print('매번 호출'));
    // once(count, (callback) => print('한번만 호출'));
    //debounce(count, (callback) => print('마지막 변경에 한번만 호출'), time: Duration(seconds: 1));
    interval(count, (callback) => print('변경되고 있는 동안 1초마다 호출'),
        time: Duration(seconds: 1));
    super.onInit();
  }
}
