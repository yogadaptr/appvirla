import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page2"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Get.off(LoginPage());
          },
          child: Text("pindah"),
        ),
      ),
    );
  }
}
