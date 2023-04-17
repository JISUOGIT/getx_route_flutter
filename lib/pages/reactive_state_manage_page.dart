import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_route_manage/pages/state/with_getx.dart';
import 'package:getx_sample_route_manage/pages/state/with_provider.dart';
import 'package:getx_sample_route_manage/src/controller/count_controller_with_getx.dart';
import 'package:getx_sample_route_manage/src/controller/count_controller_with_provider.dart';
import 'package:getx_sample_route_manage/src/controller/count_controller_with_reactive.dart';
import 'package:provider/provider.dart';

import '../src/home.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text('반응형상태관리'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'GetX',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            // GetX(
            //   builder: (controller) {
            //     return Text(
            //       '${Get.find<CountControllerWithReactive>().count.value}',
            //       style: const TextStyle(
            //         fontSize: 50,
            //       ),
            //     );
            //   },
            // ),
            Obx(
              () => Text(
                '${Get.find<CountControllerWithReactive>().count.value}',
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
              child: Text(
                '5로 변경',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
