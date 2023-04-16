import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_route_manage/pages/normal/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
              onPressed: () {
                /**Navigaotr 이용하여 페이지 이동*/
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => FirstPage(),
                // ));
                /**Get 사용하여 페이지 이동*/
                Get.to(SecondPage());
              },
              child: Text('다음 페이지 이동'),
            )
          ],
        ),
      ),
    );
  }
}
