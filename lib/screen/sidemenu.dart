import 'package:dynamic_theme_switcher/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TestSideMenu extends StatefulWidget {
  @override
  _TestSideMenuState createState() => _TestSideMenuState();
}

class _TestSideMenuState extends State<TestSideMenu> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DynamicThemeProvider>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: null,
            decoration: BoxDecoration(
              color: Theme.of(context).focusColor,
              image: DecorationImage(
                image: AssetImage("assets/basicimages/McDonaldsLogo.jpg"), fit: BoxFit.cover
              )
            ),
          ),
          // It changes color black to white(or white to black)
          // when you click the switch.
          ListTile(
            title: Text("Test"),
            trailing: Switch(
              value: themeProvider.getDarkMode(),
              onChanged: (value){
                setState(() {
                  themeProvider.changeDarkMode(value);
                });
              }
            ),
          ),
          ListTile(title: Text("Filter"), onTap: (){Navigator.pushNamed(context, "/detail");}),
        ],
      )
    );
  }
}