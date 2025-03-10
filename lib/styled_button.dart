import "package:flutter/material.dart";
import "package:flutter_project_1/styled_text.dart";

class StyledButton extends StatelessWidget{
  const StyledButton(this.text, this.goTo, {super.key});
  
final String text;
final Function() goTo;

  @override
  Widget build(context){
    return OutlinedButton.icon(
          onPressed: goTo,
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
            icon: const Icon(Icons.location_on, color: Colors.white, size: 28.0),
          label: StyledText(
            text,
          ),
        );
}
}