import 'package:flutter/material.dart';

class ContainersPart01 extends StatelessWidget {
  const ContainersPart01({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.blue
        ),
        child: const Center(
          child: Text(
            'Olá Mundo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            ),
          ),
        ),
      ),
      
      Row(
        children: [
            Container(
            height: 100,
            width: 200,
            color: Colors.deepPurpleAccent,
            ),
            Container(
            height: 100,
            width: 200,
              color: Colors.lightGreenAccent,
            )
        ],
      )
    ],
  );
  }
}