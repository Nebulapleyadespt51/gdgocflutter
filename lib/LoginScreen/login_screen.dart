import 'package:aplikasitestgdgoc/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Image.asset(
                "gambar/Fotoku 1.jpg",
                width: 200,
              ),
              Text(
                "Login",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Halo Selamat Datang",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                ),
              ),
          // Login Button
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
          ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
