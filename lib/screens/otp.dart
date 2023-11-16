import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kabar/screens/reset_password.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "OTP Verification",
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.12,
              ),
            ),
            Text(
              "Enter the OTP sent to +67-1234-5678-9",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.12,
              ),
            ),
            VerificationCode(
              keyboardType: TextInputType.number,
              onCompleted: (String value) {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPassword(),
                      ),
                    );
                  },
                );
              },
              onEditing: (bool value) {
                value;
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Resend code in "),
                    Text(
                      "56s",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
