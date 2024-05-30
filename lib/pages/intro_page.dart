// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jap_in_pan/pages/navigator_page.dart';
import 'package:jap_in_pan/providers/info_data_modal.dart';
import 'package:jap_in_pan/style/my_color_style.dart';
import 'package:provider/provider.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

bool isTaped = false;

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        backgroundColor: MyColors.jusperRed,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: AnimatedAlign(
                duration: Duration(seconds: 2),
                alignment: isTaped ? Alignment.bottomCenter : Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(20)),
                  height: 60,
                  width: 160,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavigatorBarPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Start ordering',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.oswald(
                        textStyle: TextStyle(color: MyColors.rufousRed),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 240, horizontal: 70),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'We deliver the delicious side of Japan',
                            style: GoogleFonts.notoSerif(
                              textStyle: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              isTaped = !isTaped;
                            });
                          },
                          child: Image(
                            image: AssetImage('assets/images/sushi_house.png'),
                          ),
                        ),
                        Text(
                          isTaped ? '' : '(Tap me twice)',
                          style: GoogleFonts.oswald(
                              textStyle: TextStyle(
                                  wordSpacing: 3, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}
