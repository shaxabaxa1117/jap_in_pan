// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jap_in_pan/components/my_home_scroller.dart';
import 'package:jap_in_pan/providers/info_data_modal.dart';
import 'package:jap_in_pan/style/my_color_style.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.jusperRed,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'What we offer',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSerif(
                    textStyle: TextStyle(
                        color: MyColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 23),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                endIndent: 15,
                indent: 15,
                color: MyColors.rufousRed,
              ),
              SizedBox(
                  height: 200, width: double.infinity, child: MyHomeScroller()),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Why Japanese food?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSerif(
                    textStyle: TextStyle(
                        color: MyColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 23),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                endIndent: 15,
                indent: 15,
                color: MyColors.rufousRed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//!


