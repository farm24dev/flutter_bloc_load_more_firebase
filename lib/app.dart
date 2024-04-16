import 'package:flutter/material.dart';
import 'package:flutter_cubit_loadmore/pages/home_page.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      builder: FlutterSmartDialog.init(),
    );
  }
}
