import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kabar/screens/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              width: 379,
              height: 155,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello!",
                    style: GoogleFonts.poppins(
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(24, 119, 242, 1),
                    ),
                  ),
                  SizedBox(
                    width: 222,
                    height: 60,
                    child: Text(
                      "Signup to get Started",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Username",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  "*",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: const Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixStyle: TextStyle(
                        color: Color.fromRGBO(24, 119, 242, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Text(
                    "Password",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: const Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixStyle: TextStyle(
                        color: Color.fromRGBO(24, 119, 242, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.check_box),
                      color: const Color.fromRGBO(24, 119, 242, 1),
                    ),
                    Text(
                      "Remeber me",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 379,
              height: 50,
              child: Container(
                color: const Color.fromRGBO(24, 119, 242, 1),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Center(
                child: Text("or continue with"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 165,
                  height: 48,
                  child: Container(
                    color: const Color.fromRGBO(238, 241, 244, 1),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook),
                          Text(
                            "facebook",
                            style: TextStyle(
                              color: Color.fromRGBO(102, 112, 128, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 165,
                  height: 48,
                  child: Container(
                    color: const Color.fromRGBO(238, 241, 244, 1),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            width: 24,
                            height: 24,
                            image: AssetImage("images/google.png"),
                          ),
                          Text(
                            "Google",
                            style: TextStyle(
                              color: Color.fromRGBO(102, 112, 128, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: Text(
                      "login",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.12,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
