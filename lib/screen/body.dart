import 'package:dynamic_theme_switcher/screen/sidemenu.dart';
import 'package:flutter/material.dart';


class TestBody extends StatefulWidget {
  @override
  _TestBodyState createState() => _TestBodyState();
}

class _TestBodyState extends State<TestBody> {
  // final themeProvider = Provider.of<DynamicThemeProvider>(context);
  Widget _buildAppBar(){
    return AppBar(
      title: Text("Hi"),
      // backgroundColor: Colors.white,
      // backgroundColor: themeProvider.getDarkMode() ? ThemeData.dark() : ThemeData.light(),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.add,
            color: Colors.white
          ),
          onPressed: () => Navigator.pushNamed(context, "/detail"),
        )
      ],
    );
  }

  Widget _buildTestBody(){
    return Container(
      child: Text("Test..")
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildTestBody(),
      // drawer: SideMenu(),
      drawer: TestSideMenu(),
    );
  }
}