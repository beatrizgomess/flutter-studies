import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({super.key});
  @override
  Widget build(BuildContext context) {
  var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.purple.shade700,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if(Navigator.of(context).canPop()){
                Navigator.of(context).pop('Retorno');
            };
          }, 
          child: Text("Voltar para  pagina anterior $args")
        ),
      ),
    );
  }
}