

import 'package:flutter/material.dart';

class ModalHomeInfoData extends ChangeNotifier{

final List _homeInfoData =[

['assets/images/home/ramen.png',
' Ramen is a Japanese noodle soup popular outside Japan. Includes broth, noodles, meat or seafood and toppings. The variety of variations, from soy to tonkatsu broth, makes ramen unique.'
],
['assets/images/home/noodles.png',
'Noodles are a convenient and quick snack that is popular due to the simplicity of cooking. Pre—cooked noodles, adding hot water and spices - and the dish is ready.',
],
['assets/images/home/sushi.png',
'Sushi is a Japanese dish made of rice, fish and seafood, which has become popular all over the world. A variety of variations, from nigiri to maki rolls, make sushi a true culinary art.',
],

['assets/images/home/sake.png',
'Sake is a traditional Japanese alcoholic drink made from fermented rice. Its history goes back more than a thousand years, and it occupies an important place in Japanese culture and rituals.'
],


];

get  homeInfoData => _homeInfoData;

}
//! коротко по 50 слов
/*
Рамен:
Лапша 

Суши: 

Саке: Традиционный японский алкогольный напиток, производимый из ферментированного риса. Имеет богатую историю и важное значение в японской культуре. Свежесть ингредиентов и процесс ферментации придают саке уникальный вкус, что делает его популярным как в Японии, так и за ее пределами.
*/