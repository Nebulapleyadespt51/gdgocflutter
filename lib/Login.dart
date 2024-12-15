import 'package:aplikasitestgdgoc/LoginScreen/Register.dart';
import 'package:aplikasitestgdgoc/LoginScreen/input_text.dart';
import 'package:aplikasitestgdgoc/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'gambar/Fotoku 1.jpg',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 30),
              Text(
                "Facebook Clone",
                style: GoogleFonts.poppins(
                  fontSize: 34,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(height: 20),
              Text("Halo Selamat Datang Di Facebook Clone",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                  )),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: InputTextWidget(
                  controller: emailTextEditingController,
                  textEditingController: emailTextEditingController,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: InputTextWidget(
                  controller: passwordTextEditingController,
                  textEditingController: passwordTextEditingController,
                  isObscure: true,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ),
                      );
                    },
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
