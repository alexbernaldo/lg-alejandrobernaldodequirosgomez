import "package:flutter/material.dart";
import "package:flutter_project_1/liquid_galaxy.dart";
import "package:flutter_project_1/styled_text.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.logIn, {super.key});

  final void Function(String username, String password, String ipAddress) logIn;

  @override
  Widget build(context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController ipAddressController = TextEditingController();

    void handleLogin() {
      final username = usernameController.text;
      final password = passwordController.text;
      final ipAddress = ipAddressController.text;
      LiquidGalaxy(username, password, ipAddress);
      logIn(username, password, ipAddress);
    }

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset("assets/images/LIQUIDGALAXYLOGO.png",
              width: 200, height: 200),
          const SizedBox(height: 20),
            TextField(
            controller: usernameController,
            decoration: const InputDecoration(
              labelText: "Username",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
              filled: true,
              fillColor: Color(0xFFF0F0F0),
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            ),
          const SizedBox(height: 16),
            TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              filled: true,
              fillColor: Color(0xFFF0F0F0),
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            ),
            const SizedBox(height: 16),
            TextField(
            controller: ipAddressController,
            decoration: const InputDecoration(
              labelText: "IP Address",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.language),
              contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
              filled: true,
              fillColor: Color(0xFFF0F0F0),
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            ),
          const SizedBox(height: 24),
          OutlinedButton(
            onPressed: handleLogin,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue.shade800,
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              side: const BorderSide(color: Colors.white, width: 2),
              elevation: 3,
              shadowColor: Colors.black,
            ),
            child: StyledText("Log In"),
          ),
        ],
      ),
    );
  }
}
