import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/InfoModel.dart';
import 'package:provider_example/ListModel.dart';
import 'package:provider_example/textInputModel.dart';
import 'package:provider_example/view.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => InfoModel()),
          ChangeNotifierProvider(create: (_) => ListModel()),
          ChangeNotifierProvider(create: (_) => RealTimeInputModel()),
          //  ChangeNotifierProvider<ThemeNotifier>(create: (_) => ThemeNotifier()),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ViewPage(),
    );
  }
}
