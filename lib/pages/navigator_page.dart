// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_typing_uninitialized_variables

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jap_in_pan/components/my_drawer.dart';
import 'package:jap_in_pan/pages/alcohol_page.dart';
import 'package:jap_in_pan/pages/home_page.dart';
import 'package:jap_in_pan/pages/noodle_page.dart';
import 'package:jap_in_pan/pages/ramen_page.dart';
import 'package:jap_in_pan/pages/sushi_page.dart';
import 'package:jap_in_pan/providers/pruduct_modal.dart';
import 'package:jap_in_pan/style/my_color_style.dart';
import 'package:provider/provider.dart';

class NavigatorBarPage extends StatefulWidget {
  const NavigatorBarPage({super.key});

  @override
  State<NavigatorBarPage> createState() => _NavigatorBarPageState();
}

class _NavigatorBarPageState extends State<NavigatorBarPage> {
  var currentPage;
  int myIndex = 0;
  final List _pageList = [
    HomePage(),
    RamenPage(),
    NoodlePage(),
    SushiPage(),
    AlcoholPage()
  ];

  changeIndex(int index) {
    setState(() {
      currentPage = _pageList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ModalProduct(), //! передача данных
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Jap in pan',
              style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: MyColors.white,

                  ),
            ),
            ),
            backgroundColor: MyColors.rufousRed,
          ),
          drawer: MyDrawer(),
          backgroundColor: MyColors.jusperRed,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38)),
              onPressed: () {},
              child: Icon(Icons.receipt),
              backgroundColor: MyColors.lakeBlue,
            ),
          ),
          bottomNavigationBar: ConvexAppBar(
            style: TabStyle.flip,
            height: 60,
            backgroundColor: MyColors.rufousRed,
            activeColor: MyColors.black,
            items: [
              TabItem(
                  icon: Image.asset('assets/icons/house_icon.png'),
                  title: 'Home'),
              TabItem(
                  icon: Image.asset('assets/icons/ramen_icon.png'),
                  title: 'Ramen'),
              TabItem(
                  icon: Image.asset('assets/icons/noodle_icon.png'),
                  title: 'Noodle'),
              TabItem(
                  icon: Image.asset('assets/icons/sushi_icon.png'),
                  title: 'Sushi'),
              TabItem(
                  icon: Image.asset('assets/icons/alcohol_icon.png'),
                  title: 'Alcohol')
            ],
            initialActiveIndex: 0,
            onTap: (index) {
              changeIndex(index);
              myIndex = index;
            },
          ),
          body: myIndex == 0 ? HomePage() : currentPage),
    );
  }
}
