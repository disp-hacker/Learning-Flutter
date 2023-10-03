import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color iconColor;
  final Color splashColor;

  const MyButton(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.iconColor,
      required this.splashColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        width: 100,
        height: 50,
        decoration: const BoxDecoration(
          // color: Colors.amber,
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.amber, Colors.green]),
          //borderRadius: BorderRadius.all(Radius.circular(8))
          //
        ),
        child: InkWell(
          onTap: () => onTap,
          //borderRadius: BorderRadius.circular(8),
          onLongPress: () {
            print("Long Pressed!");
          },
          splashColor: splashColor,
          customBorder: const CircleBorder(),
          child: Center(
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonGesture extends StatelessWidget {
  final Function() onTap;
  final String text;
  const CustomButtonGesture(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      onTapDown: (details) => print("down"),
      child: Container(
        height: 50,
        width: 100,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 204, 90, 14),
                Color.fromARGB(255, 81, 132, 228)
              ]),
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
