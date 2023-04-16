import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../src/home.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${Get.arguments as User} : ${Get.arguments['age']}'),

            ElevatedButton(
              onPressed: Get.back,
              child: Text('뒤로 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
