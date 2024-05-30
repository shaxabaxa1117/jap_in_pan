// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jap_in_pan/components/my_list_tile.dart';
import 'package:jap_in_pan/providers/pruduct_modal.dart';
import 'package:jap_in_pan/style/my_color_style.dart';
import 'package:provider/provider.dart';

class RamenPage extends StatelessWidget {
  const RamenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ramenModel = context.watch<ModalProduct>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'Ramen here. Ramen there. IT IS EVERYWHERE !',
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: MyColors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 23),
            ),
          ),
        ),
        Divider(thickness: 1,endIndent: 15,indent: 15,),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => MyListTile(  //!
            dishName: ramenModel.ramenData[index][0],
            subtitleName: ramenModel.ramenData[index][1],
            cost: ramenModel.ramenData[index][2],
            imageRoute: ramenModel.ramenData[index][3],
          ),
          itemCount: ramenModel.ramenData.length,

        )),
      ],
    );
  }
}
