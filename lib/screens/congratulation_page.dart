import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kabar/screens/country.dart';

class CongratPage extends StatelessWidget {
  const CongratPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/homepage.png"),
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
                        builder: (context) => const SelectCountry(),
                      ),
                    );
                  },
                  child: Text(
                    "Go to Homepage",
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
