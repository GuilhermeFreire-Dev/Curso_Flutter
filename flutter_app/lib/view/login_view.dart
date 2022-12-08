import 'dart:html';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/shared/custom_input.dart';
import 'package:flutter_app/view/cadastro_view.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 1, 1),
        title: Text(
          'Login Screen',
          style: GoogleFonts.montserrat(fontSize: 18),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CadastroView(),
                ),
              );
            },
            icon: const Icon(Icons.person_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomInput(
              title: 'Login',
              controller: _loginController,
            ),
            CustomInput(
              title: 'Password',
              controller: _passwordController,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('login'),
            )
          ],
        ),
      ),
    );
  }
}
