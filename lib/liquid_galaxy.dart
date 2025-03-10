import "package:flutter/material.dart";
import "package:flutter_project_1/config.dart";
import "package:flutter_project_1/styled_button.dart";

class LiquidGalaxy extends StatefulWidget {
  const LiquidGalaxy(this.username, this.password, this.ipAddress, {super.key});

  final String username;
  final String password;
  final String ipAddress;

  @override
  State<LiquidGalaxy> createState() {
    return _MoveToPlace();
  }
}

class _MoveToPlace extends State<LiquidGalaxy> {

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
        Image.asset("assets/images/LIQUIDGALAXYLOGO.png",
          width: 200, height: 200),
        const SizedBox(height: 20),
        StyledButton("Eiffel Tower", () => flyToEiffelTowerUsingSSH(widget.username, widget.password, widget.ipAddress)),
        SizedBox(height: 16),
        StyledButton("Taj Mahal", () => flyToTajMahalUsingSSH(widget.username, widget.password, widget.ipAddress)),
        SizedBox(height: 16),
        StyledButton("Statue of Liberty", () => flyToStatueOfLibertyUsingSSH(widget.username, widget.password, widget.ipAddress)),
        SizedBox(height: 16),
        StyledButton("Golden Gate Bridge", () => flyToGoldenGateBridgeUsingSSH(widget.username, widget.password, widget.ipAddress)),
        ],
      ),
      );
  }
}
