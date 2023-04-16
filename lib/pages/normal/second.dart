import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../src/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: Get.back,
              child: Text('뒤로 이동'),
            ),
            ElevatedButton(
              onPressed: () {
                /**history 그대로 있음*/
                //Get.to(Home());

                /**한번 보고서 다시 이동할 페이지가 필요 없는 경우*/
                Get.offAll(Home());
              },
              child: Text('홈으로 이동'),
            )
          ],
        ),
      ),
    );
  }
}
