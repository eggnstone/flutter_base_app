import 'package:flutter/material.dart';
import 'package:flutter_base/MainScreen.dart';

class App extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MainScreen(),
            theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            title: 'FlutterBase'
        );
    }
}
