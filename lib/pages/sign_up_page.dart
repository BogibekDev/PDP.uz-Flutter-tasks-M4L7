import 'package:flutter/material.dart';

import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  static const String id = "SignUpPage";

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  String _name="",_email = "", _password = "";
  void _openHome() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Navigator.pushNamed(context, HomePage.id);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Instagram",
                style: TextStyle(fontSize: 40),
              ),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                            decoration:
                            const InputDecoration(labelText: "Name"),
                            validator: (input) => input!.length<3
                                ? "Please enter a valid name"
                                : null,
                            onSaved: (input) => _name = input!),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                            decoration:
                            const InputDecoration(labelText: "Email"),
                            validator: (input) => !input!.contains('@')
                                ? "Please enter a valid email"
                                : null,
                            onSaved: (input) => _email = input!),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                            decoration:
                            const InputDecoration(labelText: "Password"),
                            validator: (input) => input!.length < 8
                                ? "Must be least 8 characters"
                                : null,
                            onSaved: (input) => _password = input!),
                      ),
                      Container(
                        margin: const EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blue,
                        child: MaterialButton(
                          onPressed: () {
                            _openHome();
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?"),
                          const SizedBox(width: 15),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, SignUpPage.id);
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
