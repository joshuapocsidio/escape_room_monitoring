import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_windows/view/screen/MainScreen.dart';

void main() => runApp(WinApp());

class WinApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: Colors.green,
        inactiveColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        navigationPaneTheme: NavigationPaneThemeData(
          animationDuration: Duration(milliseconds: 100),
          highlightColor: Colors.orange.resolveFromReverseBrightness(
            Brightness.light,
            level: Brightness.light.isDark ? 2 : 0,
          ),
          selectedIconColor: ButtonState.all(
            Colors.blue,
          ),
          unselectedIconColor: ButtonState.all(
            Colors.black,
          ),
          iconPadding: EdgeInsets.all(8),
          selectedTextStyle: ButtonState.all(
            TextStyle(
              fontSize: 20,
              color: Colors.black
            ),
          ),
          unselectedTextStyle: ButtonState.all(
            TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          itemHeaderTextStyle: TextStyle(
            fontSize: 30,
            color: Colors.black,
          )
        ),
      ),
      home: MainScreen(),
    );
  }
}

