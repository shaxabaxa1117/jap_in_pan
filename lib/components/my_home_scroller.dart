// ignore_for_file: prefer_const_constructors

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jap_in_pan/pages/ramen_page.dart';
import 'package:jap_in_pan/providers/info_data_modal.dart';
import 'package:jap_in_pan/style/my_color_style.dart';
import 'package:provider/provider.dart';

class MyHomeScroller extends StatefulWidget {
  MyHomeScroller({
    super.key,
  });

  @override
  State<MyHomeScroller> createState() => _MyHomeScrollerState();
}

class _MyHomeScrollerState extends State<MyHomeScroller> {
  @override
  Widget build(BuildContext context) {
    var homeModal = context.watch<ModalHomeInfoData>();
    return SizedBox(
      height: 200,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: MyColors.lakeBlue,
            elevation: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      homeModal.homeInfoData[index][0],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      homeModal.homeInfoData[index][1],
                      style: GoogleFonts.lora(
                        textStyle: TextStyle(
      
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        duration: 450,
        itemWidth: 600,
        itemHeight: 400.0,
        layout: SwiperLayout.TINDER,
        itemCount: homeModal.homeInfoData.length,
        autoplayDisableOnInteraction: true,
        autoplay: true,
        autoplayDelay: 5050,
      ),
    );
  }
}
