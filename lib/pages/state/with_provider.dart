import 'package:flutter/material.dart';
import 'package:getx_sample_route_manage/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  Widget _button(context) {
    return ElevatedButton(
      onPressed: () {
        Provider.of<CountControllerWithProvider>(context, listen: false)
            .increase();
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
          Text(
            'Provider',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Consumer<CountControllerWithProvider>(
            builder: (context, snapshot, child) {
              return Text(
                //listen=flase로 snaphost.count만 빌드되도록
                '${snapshot.count}',
                style: TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          _button(context),
        ],
      ),
    );
  }
}
