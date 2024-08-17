import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 246, 246, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: SvgPicture.asset(
                    "assets/images/Logo.svg",
                    width: 120,
                  ),
                ),
                const Spacer(),
              ],
            ),
            Image.asset(
              "assets/images/Hero.jpg",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Text(
                    "WE'RE",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color.fromRGBO(188, 156, 156, 1),
                      letterSpacing: 10,
                    ),
                  ),
                  const Text(
                    "COMING SOON",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color.fromRGBO(61, 54, 54, 1),
                      letterSpacing: 10,
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Hello fellow shoppers! We're currently building our new fashion store. Add your email below to stay up-to-date with announcements and our launch deals.",
                    style: TextStyle(
                      color: Color.fromRGBO(192, 159, 160, 1),
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(214, 198, 199, 1),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email Address",
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(226, 205, 206, 1),
                                  )),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(243, 163, 164, 1),
                            elevation: 10,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 3),
                            child: SvgPicture.asset("assets/images/Arrow.svg"),
                          ),
                        )
                      ],
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
