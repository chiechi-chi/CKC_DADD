import 'package:flutter/material.dart';

class pausegame extends StatelessWidget {
  const pausegame({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        child: Column(children: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.pause_rounded,
              color: Colors.white,
            ),
          )
        ]),
      ),
    );
  }
}
