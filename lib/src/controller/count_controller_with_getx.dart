import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {

  int count = 0;
  // id를 부여해서 한 페이지에서 같은 함수의 같은 기능을 따로 부여해서 관리 할 수 있다
  void increase(String id){
    count++;
    update([id]);
  }
}