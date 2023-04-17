import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_route_manage/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);

  // 위젯 생성시 controller 생성성
 CountControllerWithGetX _controller = Get.put(CountControllerWithGetX());

  // String id 부여
  Widget _button(String id) {
    return ElevatedButton(
      onPressed: () {
        // context 없어서 context 명시 되지 않은 부분에서 사용하기에
        // 따로 함수 기능으로 사용할 수 있다.
        _controller.increase(id);
      },
      child: Text(
        '+',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'GetX',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          GetBuilder<CountControllerWithGetX>(
            // 개인 고유 id 부여
            id: "first",
            builder: (controller) {
              return Text(
                '${controller.count}',
                style: const TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            // 개인 고유 id 부여
            id: "second",
            builder: (controller) {
              return Text(
                '${controller.count}',
                style: const TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          // 특정 컨트롤러 아이디 부여해서 각각 사용 가능
          // String id
          _button("first"),
          // String id
          // 특정 컨트롤러 아이디 부여해서 각각 사용 가능
          _button("second"),
        ],
      ),
    );
  }
}
