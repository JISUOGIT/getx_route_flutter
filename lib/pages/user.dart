import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../src/home.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          children: [
            // user 객체 받기
            //Text('${(Get.arguments as User).name} : ${(Get.arguments as User).age}'),
            // User 객체를 argument 지정하고 name, age argument 받기
            Text('${(Get.parameters['uid'])}'),
            Text('${(Get.parameters['name'])}님 안녕하세요'),
            Text('${(Get.parameters['age'])}'),
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
