import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kabar/screens/otp.dart';

class ForgetPass2 extends StatefulWidget {
  const ForgetPass2({super.key});

  @override
  State<ForgetPass2> createState() => _ForgetPass2State();
}

class _ForgetPass2State extends State<ForgetPass2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        elevation: 0,
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forget \nPassword?",
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(78, 75, 102, 1),
              ),
            ),
            SizedBox(
              width: 325,
              height: 48,
              child: Text(
                "Don’t worry! it happens. Please enter the address associated with your account.",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(78, 75, 102, 1),
                ),
                maxLines: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Email ID / Mobile number",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(78, 75, 102, 1),
                ),
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
          ],
        ),
      ),

      // BottomApp Bar
      bottomNavigationBar: BottomAppBar(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 130,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(0, 0, 0, 0.05),
                ),
                gradient: const LinearGradient(
                    colors: [Colors.white, Colors.white70],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 13, top: 24, left: 13, bottom: 24),
              child: SizedBox(
                width: 380,
                height: 50,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(24, 119, 242, 1)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Otp(),
                      ),
                    );
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
