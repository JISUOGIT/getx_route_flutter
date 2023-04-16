import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_route_manage/pages/named/first.dart';
import 'package:getx_sample_route_manage/pages/named/second.dart';
import 'package:getx_sample_route_manage/pages/next.dart';
import 'package:getx_sample_route_manage/pages/user.dart';
import 'package:getx_sample_route_manage/src/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // route 사용시 home 제거
      // home: Home(),
      initialRoute: '/',
      // Material Page 관리
      // routes: {
      //   '/' : (context) => Home(),
      //   '/first' : (context) => FirstNamedPage(),
      //   '/second' : (context) => SecondNamedPage(),
      // },
      // get Named Page 관리
      // transition : 애니메이션 효과
      getPages: [
        GetPage(
          name: '/',
          page: () => Home(),
          transition: Transition.zoom,
        ),
        GetPage(
            name: '/first',
            page: () => FirstNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/second',
            page: () => SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/next', page: () => NextPage(), transition: Transition.zoom),
        GetPage(
            // uid 설정
            name: '/user/:uid/',
            page: () => UserPage(),
            transition: Transition.zoom),
      ],
    );
  }
}
