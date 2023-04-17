import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_route_manage/pages/state/with_getx.dart';
import 'package:getx_sample_route_manage/pages/state/with_provider.dart';
import 'package:getx_sample_route_manage/src/controller/count_controller_with_getx.dart';
import 'package:getx_sample_route_manage/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

import '../src/home.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('단순상태관리'),
      ),
      body: Center(
        child: Column(
          children: [
            // GetX 이용한 관리
            Expanded(
              child: WithGetX(),
            ),
            // ChangeNotifier 이용한 관리
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (context) => CountControllerWithProvider(),
                child: WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
