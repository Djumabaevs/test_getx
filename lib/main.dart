import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dialog Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks Dialog'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Show Dialog'),
        onPressed: () {
          Get.defaultDialog();
        },
      )),
    );
  }
}
