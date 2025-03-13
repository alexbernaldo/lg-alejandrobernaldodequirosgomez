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
        StyledButton("Eiffel Tower", () => flyToEiffelTowerUsingKML(widget.username, widget.password, widget.ipAddress)),
        SizedBox(height: 16),
        StyledButton("Taj Mahal", () => flyToTajMahalUsingKML(widget.username, widget.password, widget.ipAddress)),
        SizedBox(height: 16),
        StyledButton("Statue of Liberty", () => flyToStatueOfLibertyUsingKML(widget.username, widget.password, widget.ipAddress)),
        SizedBox(height: 16),
        StyledButton("Golden Gate Bridge", () => flyToGoldenGateBridgeUsingKML(widget.username, widget.password, widget.ipAddress)),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 175,  
              height: 40, 
              child: ElevatedButton(
          onPressed: () => showLogoUsingKML(widget.username, widget.password, widget.ipAddress),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(10), 
            textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          child: const Text("Show Logo"),
              ),
            ),
            SizedBox(
              width: 175,  
              height: 40, 
              child: ElevatedButton(
          onPressed: () => clearLogoUsingSSH(widget.username, widget.password, widget.ipAddress),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(10), 
            textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          child: const Text("Clear Logos"),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        SizedBox(
          width: 175,  
          height: 40, 
          child: ElevatedButton(
            onPressed: () => clearKMLSUsingSSH(widget.username, widget.password, widget.ipAddress),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(10), 
              textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            child: const Text("Clear KMLs"),
          ),
        ),
        ],
      ) 
    );
  }
}