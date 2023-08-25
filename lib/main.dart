import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_match_live_score_app_flutter/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
