import 'package:country_list_pick/country_list_pick.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SelectCountry extends StatefulWidget {
  const SelectCountry({super.key});

  @override
  State<SelectCountry> createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  var countryValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        elevation: 0,
        title: Text(
          "Select your Country",
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.12,
              color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CountryListPick(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("Country name"),
            ),
            // ignore: non_constant_identifier_names
            pickerBuilder: (context, countryCode) {
              return Row(
                children: [Image.asset('')],
              );
            },
            theme: CountryTheme(
              isShowFlag: true,
              isShowTitle: true,
            ),
            initialSelection: '+234',
            useUiOverlay: true,
          ),
        ],
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const ForgetPass2(),
                    //   ),
                    // );
                  },
                  child: Text(
                    "Next",
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
