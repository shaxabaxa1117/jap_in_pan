// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:jap_in_pan/style/my_color_style.dart';

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key,
      required this.dishName,
      required this.subtitleName,
      required this.cost,
      required this.imageRoute});

  final String dishName;
  final String subtitleName;
  final String cost;
  final String imageRoute;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 95,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 196, 127, 67),
            borderRadius: BorderRadius.circular(7)),
        child: Row(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage(imageRoute),
              ),
            ),
            Container(
              
              width: 230,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    dishName,
                  ),
                  Text(subtitleName,style: TextStyle(color: Color.fromARGB(112, 0, 0, 0),),),
                  Text('Price: $cost\$',style: TextStyle(color: Color.fromARGB(112, 0, 0, 0),),)
                ],
              ),
            ),
            SizedBox(height: 50,)//! добавить кнопки + и - а также количество выбранного товара
          ],
        ),
      ),
    );
  }
}


// Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Container(
//         height: 110,
//         decoration: BoxDecoration(
//           color: Color.fromARGB(255, 196, 127, 67),
//           borderRadius: BorderRadius.circular(7)
//         ),
//         child: ListTile(
//           leading: Image.asset(imageRoute),
          
//           title: Text(dishName,),
//           subtitle: Text(subtitleName + '\n- Price : $cost\$',),
          // trailing: SizedBox(
          //   height: 40,
          //   width: 40,
          //   child: IconButton(icon: Icon(Icons.add,), onPressed: (){},)),
          
          
//         ),
//       ),
//     );