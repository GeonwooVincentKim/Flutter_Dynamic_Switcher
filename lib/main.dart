import 'package:dynamic_theme_switcher/provider/provider.dart';
import 'package:dynamic_theme_switcher/screen/body.dart';
import 'package:dynamic_theme_switcher/screen/page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DynamicThemeProvider()),
      ],
      // child: MyAppSub()
      child: Consumer<DynamicThemeProvider>(
        builder: (context, DynamicThemeProvider notifier, child){
          return MaterialApp(
            title: "Flutter Provider",
            // theme: notifier.getDarkMode() ? dark : light,
            theme: notifier.darkTheme ? dark : light,
            initialRoute: "/",
            routes: {
              "/": (context) => TestBody(),
              "/detail": (context) => TestPage()
            },
            onGenerateRoute: (settings) {
              final List<String> routeGenerator = settings.name.split("/");
              if(routeGenerator[0] != '') return null;
              if(routeGenerator[1] == '/test'){
                String detailID = routeGenerator[2];
                // return MaterialPageRoute(builder: (context) => TestPage(testID: detailID));
              }
            },
            onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => MyApp()),
          );
        }
      ),
    );
  }
}

// class MyAppSub extends StatelessWidget {
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<DynamicThemeProvider>(context);
//     return MaterialApp(
//       // theme: themeProvider.getDarkMode() ? darkTheme : lightTheme,
//       theme: themeProvider.darkTheme ? darkTheme : lightTheme,
//       initialRoute: "/",
//       routes: {
//         "/": (context) => TestBody(),
//         "/detail": (context) => TestPage()
//       },
//       onGenerateRoute: (settings) {
//         final List<String> routeGenerator = settings.name.split("/");
//         if(routeGenerator[0] != '') return null;
//         if(routeGenerator[1] == '/test'){
//           String detailID = routeGenerator[2];
//           // return MaterialPageRoute(builder: (context) => TestPage(testID: detailID));
//         }
//       },
//       onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => MyApp()),
//     );
//   }
// }
