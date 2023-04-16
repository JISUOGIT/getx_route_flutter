import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../src/home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Named Page'),
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
                /**history 삭제하면서 home으로 이동*/
                Get.offAllNamed('/');
              },
              child: Text('홈으로 이동'),
            )
          ],
        ),
      ),
    );
  }
}
