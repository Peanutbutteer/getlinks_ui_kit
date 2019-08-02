import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/res/colors.dart';

import 'buttons.dart';
import 'chips.dart';
import 'text_fields.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kit Demo',
      theme: ThemeData(
        primaryColor: GetLinksColors.primary,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
      ),
      home: MyHomePage(title: 'GetLinks Mobile UI Kit'),
    );
  }
}

enum Pages { Buttons, Chips, TextFields }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Pages page = Pages.Buttons;
  @override
  Widget build(BuildContext context) {
    Widget currentPage;
    switch (page) {
      case Pages.Buttons:
        currentPage = Buttons();
        break;
      case Pages.Chips:
        currentPage = Chips();
        break;
      case Pages.TextFields:
        currentPage = TextFields();
        break;
      default:
        currentPage = Container();
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'GetLinks Mobile UI Kit',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: GetLinksColors.primary,
                ),
              ),
              ListTile(
                title: Text('Buttons'),
                selected: page == Pages.Buttons,
                onTap: () {
                  setState(() {
                    page = Pages.Buttons;
                  });
                },
              ),
              ListTile(
                title: Text('Chips'),
                selected: page == Pages.Chips,
                onTap: () {
                  setState(() {
                    page = Pages.Chips;
                  });
                },
              ),
              ListTile(
                title: Text('Text fields'),
                selected: page == Pages.TextFields,
                onTap: () {
                  setState(() {
                    page = Pages.TextFields;
                  });
                },
              )
            ],
          ),
        ),
        body: currentPage);
  }
}
