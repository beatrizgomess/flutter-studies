import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets_personalizaveis/custom.button.widget.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  //Gerência de estado nativa com ValueNotifier
  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);

  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        valorAleatorio.value = Random().nextInt(1000);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: valorAleatorio,
                builder: (_, value, __) =>
                    Text('Valor eh: $value', style: TextStyle(fontSize: 20))),
            SizedBox(height: 20),
            CustomButtonWidget(
              onPressed: () => random(),
              title: "Button",
              titleSize: 18,
            ),
          ],
        ),
        // ElevatedButton(
        //   onPressed: () {
        //     // Navigator.of(context).pushNamed('/twoPage', arguments: 'Teste')
        //     Navigator.of(context).pushReplacementNamed('/twoPage', arguments: 'Teste')
        //     .then((value) => print(value));
        //   },
        //   child: Text("Ir para a Segunda Page")
        // ),
      ),
    );
  }
}
