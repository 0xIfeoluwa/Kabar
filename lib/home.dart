import 'package:flutter/material.dart';
import 'package:kabar/screens/login.dart';
import 'package:kabar/screens/intro_page1.dart';
import 'package:kabar/screens/intro_page2.dart';
import 'package:kabar/screens/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:google_fonts/google_fonts.dart';

class Kadar extends StatefulWidget {
  const Kadar({super.key});

  @override
  State<Kadar> createState() => _KadarState();
}

class _KadarState extends State<Kadar> {
  final _controller = PageController();
  // keeping track if we are on last page

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          // dot indicator
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0, left: 25, right: 25),
            child: Container(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(controller: _controller, count: 3),

                    // button to next/Get started
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            _controller.previousPage(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
                            "Back",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(24, 119, 242, 1),
                            ),
                          ),
                        ),
                        onLastPage
                            ? Container(
                                width: 142,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(24, 119, 242, 1),
                                ),
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Login()));
                                  },
                                  child: const Text(
                                    "Get Stated",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                width: 85,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(24, 119, 242, 1),
                                ),
                                child: OutlinedButton(
                                  onPressed: () {
                                    _controller.nextPage(
                                        duration: const Duration(
                                          milliseconds: 500,
                                        ),
                                        curve: Curves.easeIn);
                                  },
                                  child: const Text(
                                    "Next",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
