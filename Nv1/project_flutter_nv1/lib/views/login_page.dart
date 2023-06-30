import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_flutter_nv1/components/login/custom_login_button_component.dart';
import 'package:project_flutter_nv1/controllers/login_controllers.dart';
import 'package:project_flutter_nv1/widgets/custom_text_filed_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginController _controller = LoginController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.people, size: MediaQuery.of(context).size.height * 0.2, color:  const Color.fromRGBO(232, 103, 134, 1),),
          CustomTextFieldWidget(
            onChanged: _controller.setLogin, 
            label: 'Login', 
            obscureText: false
          ),
          const SizedBox(height: 15),
          CustomTextFieldWidget(
            onChanged: _controller.setPassword, 
            label: 'Password', 
            obscureText: true
          ),
          const SizedBox(height: 15),
          CustomLoginButtonComponent(controller: _controller)
          ],
        ),
      ),
    );
  }
}

