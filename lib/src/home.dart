import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_route_manage/pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                /**Navigaotr 이용하여 페이지 이동*/
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => FirstPage(),
                // ));
                /**Get 사용하여 페이지 이동*/
                Get.to(FirstPage());
              },
              child: Text('일반적인 라우트'),
            ),
            ElevatedButton(
              onPressed: () {
                // pushNamed 사용하여 페이지 이동
                //Navigator.of(context).pushNamed('/first');
                /**get 이용하여 named page 이동*/
                Get.toNamed('/first');
              },
              child: Text('Named 라우트'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/next', arguments: User(name: '최지수', age: 32));
              },
              child: Text('Argument 전달'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/user/28357?name=개남&age=22');
              },
              child: Text('동적 url'),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}
