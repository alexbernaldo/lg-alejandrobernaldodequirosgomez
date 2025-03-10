import "package:flutter/material.dart";
import "package:flutter_project_1/liquid_galaxy.dart";
import "package:flutter_project_1/start_screen.dart";

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State <Screen> createState() {
    return _ScreenState();
  }
}

class _ScreenState extends State<Screen> {
  var activeScreen = "start-screen";

  String? _username;
  String? _password;
  String? _ipAddress;

  void switchScreen(String username, String password, String ipAddress) {
    setState(() {
      _username = username;
      _password = password;
      _ipAddress = ipAddress;
      activeScreen = "liquidGalaxy-screen";
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    
    if (activeScreen == "liquidGalaxy-screen") {
      screenWidget = LiquidGalaxy(_username!, _password!, _ipAddress!);
    }

    return MaterialApp(
      home: Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
          Colors.deepPurple, 
          Colors.purple
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        ),
        child: screenWidget,
      ),
      )
    );
  }

}