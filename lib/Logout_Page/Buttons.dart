
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;
  final onpress;


  Buttons({required this.text, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return  Container(height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        child: ElevatedButton(onPressed: onpress,
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(70)
            ))
            ),
            child: Text(text, style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 20
        ),)));
  }
}
