import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gowallpaper/bloc/theme.dart';
import 'package:gowallpaper/screens/home.dart';
import 'package:gowallpaper/screens/wrapper.dart';
import 'package:gowallpaper/models/user.dart';
import 'package:gowallpaper/services/auth.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: MaterialApp(
          title: 'GoWallpaper',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            '/stream': (context) => Stream(),
          },
          initialRoute: '/stream'),
    );
  }
}

class Stream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserId>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}