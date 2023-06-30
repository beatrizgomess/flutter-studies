import 'package:flutter/material.dart';
import 'package:project_flutter_nv1/controllers/login_controllers.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  const CustomLoginButtonComponent({
    super.key,
    required LoginController controller,
  }) : _controller = controller;

  final LoginController _controller;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _controller.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? CircularProgressIndicator()
          : ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
                elevation: MaterialStateProperty.all(10),
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(232, 103, 134, 1)),
              ),
              onPressed: () {
                _controller.auth().then((value) {
                  if (value) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('Erro ao Realizar Login'),
                        backgroundColor: const Color.fromRGBO(232, 103, 134, 1),
                        action: SnackBarAction(
                          label: 'Ok',
                          onPressed: () {},
                          textColor: Colors.white,
                        )));
                  }
                });
              },
              child: const Text('Login')),
    );
  }
}
