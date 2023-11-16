import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kabar/screens/congratulation_page.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "RESET \nPASSWORD",
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.12,
                color: const Color.fromRGBO(78, 75, 102, 1),
              ),
            ),
            Row(
              children: [
                Text(
                  "New Password",
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
            Row(
              children: [
                Text(
                  "Confirm new password",
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
          ],
        ),
      ),
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
                    colors: [Colors.white, Colors.white],
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
                        builder: (context) => const CongratPage(),
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
