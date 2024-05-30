// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jap_in_pan/components/my_list_tile.dart';
import 'package:jap_in_pan/providers/pruduct_modal.dart';
import 'package:provider/provider.dart';

import 'package:jap_in_pan/style/my_color_style.dart';

class NoodlePage extends StatelessWidget {
  const NoodlePage({super.key});

  @override
  Widget build(BuildContext context) {
    final noodleModel = context.watch<ModalProduct>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Stack(
            children: [
              Text(
                'Wanna take a break? \nNoodle is the best companion',
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
            dishName: noodleModel.noodleData[index][0],
            subtitleName: noodleModel.noodleData[index][1],
            cost: noodleModel.noodleData[index][2],
            imageRoute: noodleModel.noodleData[index][3],
          ),
          itemCount: noodleModel.noodleData.length,
        )),
      ],
    );
  }
}
