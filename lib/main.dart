import 'package:flutter/material.dart';
import 'package:getit_project/service/getIt/init_getit.dart';
import 'package:getit_project/view/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
