// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jap_in_pan/components/my_list_tile.dart';
import 'package:jap_in_pan/providers/pruduct_modal.dart';
import 'package:jap_in_pan/style/my_color_style.dart';
import 'package:provider/provider.dart';

class AlcoholPage extends StatelessWidget {
    
  const AlcoholPage({super.key});

  @override
  Widget build(BuildContext context) {
      var alcoholModel = context.watch<ModalProduct>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Stack(
            children: [
              Text(
                'Sip the Spirit of Japan.',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                  textStyle: TextStyle(
                      color: MyColors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
              ),
            ],
          ),
        ),
        Divider(thickness: 1,endIndent: 15,indent: 15,),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => MyListTile(
            dishName: alcoholModel.alcoholData[index][0],
            subtitleName: alcoholModel.alcoholData[index][1],
            cost: alcoholModel.alcoholData[index][2],
            imageRoute: alcoholModel.alcoholData[index][3],
          ),
          itemCount: alcoholModel.alcoholData.length,
        )),
      ],
    );
  }
}