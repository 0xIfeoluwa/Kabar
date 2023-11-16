import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kabar/screens/forget_pass2.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

List options = ['email', 'number'];

class _ForgetPasswordState extends State<ForgetPassword> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        elevation: 0,
      ),
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
              height: 72,
              child: Text(
                "Don’t worry! it happens. Please select the email or number associated with your account.",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w400),
                maxLines: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color.fromRGBO(238, 241, 244, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color.fromRGBO(24, 119, 242, 1),
                      ),
                      child: const Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Center(
                      child: RadioListTile(
                        controlAffinity: ListTileControlAffinity.trailing,
                        title: const Text("via Email:"),
                        subtitle: Text(
                          "example@youremail.com",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        value: options[0],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color.fromRGBO(238, 241, 244, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color.fromRGBO(24, 119, 242, 1),
                      ),
                      child: const Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: RadioListTile(
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: const Text("via SMS:"),
                      subtitle: const Text("+62-8421-4512-2531"),
                      value: options[1],
                      groupValue: currentOption,
                      onChanged: (value) {
                        setState(() {
                          currentOption = value.toString();
                        });
                      },
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
                        builder: (context) => const ForgetPass2(),
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
