// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jap_in_pan/components/my_list_tile.dart';
import 'package:jap_in_pan/providers/pruduct_modal.dart';
import 'package:jap_in_pan/style/my_color_style.dart';
import 'package:provider/provider.dart';

class SushiPage extends StatelessWidget {
  const SushiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sushiModel = context.watch<ModalProduct>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'From Sea to Sushi – Pure Delight!',
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: MyColors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 27),
            ),
          ),
        ),
        Divider(thickness: 1,endIndent: 15,indent: 15,),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => MyListTile(
            dishName: sushiModel.sushiData[index][0],
            subtitleName: sushiModel.sushiData[index][1],
            cost: sushiModel.sushiData[index][2],
            imageRoute: sushiModel.sushiData[index][3],
          ),
          itemCount: sushiModel.sushiData.length

        )),
      ],
    );
  }
}