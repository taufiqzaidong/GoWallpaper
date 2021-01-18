import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gowallpaper/bloc/theme.dart';

class ChangeTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    final theme = Provider.of<ThemeChanger>(context);
    return new MaterialApp(
      theme: theme.getTheme(),
      home: new Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: FlatButton(
                    child: Text('Dark Theme'),
                    onPressed: () {
                      _themeChanger.setTheme(ThemeData.dark());
                      Navigator.pop(context);
                    }),
              ),
              Center(
                child: FlatButton(
                    child: Text('Light Theme'),
                    onPressed: () {
                      _themeChanger.setTheme(ThemeData.light());
                      Navigator.pop(context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
