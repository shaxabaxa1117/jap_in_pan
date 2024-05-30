
import 'package:flutter/material.dart';

class ModalProduct extends ChangeNotifier{


final List _ramenData = [
['Sakura no Mizu (桜の水)', 'Fragrant ramen with notes of spring freshness.', '8','assets/images/ramen/ramen1.png',],
['Ryuu-no-Tori (龍の鶏)', 'Spicy ramen with chicken breast and ginger flavor.', '7.5','assets/images/ramen/ramen2.png',],
['Kaikan-no-Ramen (海ののラン)', 'Sea ramen with seafood and seaweed.',  '9','assets/images/ramen/ramen4.png',],
['Yoko-no-Niya (横のにあ)', 'Nutritious ramen with fried lead and juicy bamboo.', '10','assets/images/ramen/ramen5.png',],
['Koitsuki no Mizu (恋しのの水)', 'Refined ramen with nut sauce and sea reptiles.', '6.5','assets/images/ramen/ramen6.png',],
['Hana-to-Hime (鮮巻き)', 'Exquisite ramen with tender meat and lotus flowers.', '7','assets/images/ramen/ramen3.png',],
['Yorozuki no Kami (夜居ずき)', 'Fragrant ramen with tender meat and spices of the night.', '5.5','assets/images/ramen/ramen7.png',],
['Tenmei no Akira (天明明の)', 'Balanced ramen with autumn pumpkin and spices.', '7','assets/images/ramen/ramen8.png',],
['Yuzu-Shio Ramen (柚子塩ーメン)', 'Salty ramen with notes of Japanese citrus yuzu.', '7','assets/images/ramen/ramen9.png',],
['Miso-Tonkotsu Ramen (味噌豚)', 'A combination of rich pork broth and miso paste.', '9','assets/images/ramen/ramen10.png',],
['Kurobuta Ramen (黒豚ラーメン)', 'Ramen with juicy pork kurobuta.', '6.5','assets/images/ramen/ramen11.png',],
['Kaisen Ramen (海ララーメン)', 'Seafood Ramen with shrimp, squid and mussels.', '7.5','assets/images/ramen/ramen12.png',],
['Sukiyaki Ramen (すララ)', 'Beef and vegetable Ramen resembling sukiyaki.', '6','assets/images/ramen/ramen13.png',],
['Tori Paitan Ramen (鶏白ララ)', 'Ramen with broth, rich in umami flavor.', '8','assets/images/ramen/ramen14.png',],
['Sho Yuza Ramen (醤柚子ラ)', 'Creamy chicken broth with a delicate taste.', '8','assets/images/ramen/ramen15.png',],
['Kare Ramen (カレーーンン)', ' Soy ramen with subtle notes of citrus yuzu.', '7','assets/images/ramen/ramen16.png',],

];
final List _noodleData = [
['Sakura-Ramen (桜ラーメン)','Ramen with a light aroma of sakura flowers.','4.5','assets/images/noodle/noodles1.png',],
['Yuzu-Shio Ramen (柚子塩ラ)','Salty ramen with notes of Japanese citrus yuzu.','4','assets/images/noodle/noodles2.png',],
['Miso-Tonkotsu Ramen (味噌豚)','A combination of rich pork broth and miso paste.','5.5','assets/images/noodle/noodles3.png',],
['Kurobuta Ramen (黒豚ラーメン)','Ramen with juicy pork kurobuta, squid and mussels.','7','assets/images/noodle/noodles4.png',],
['Kaisen Ramen (海ララ)','Seafood ramen with shrimp.','5','assets/images/noodle/noodles5.png',],
['Sukiyaki Ramen (すララ)','Triple ramen with beef and vegetables','8','assets/images/noodle/noodles6.png',],

];
final List _sushiData = [
['Midori Maki (緑巻き)','Roll with cucumber, avocado and green algae.','4','assets/images/sushi/sushi1.png',],
['Sakura Nigiri (桜握り)','Nigiri with salmon decorated with sakura petals.','4','assets/images/sushi/sushi2.png',],
['Yuzu Temari (柚子子手)','Temari sushi with notes of citrus yuzu.','4','assets/images/sushi/sushi3.png',],
['Kaisen Maki (鮮巻き)','Roll with assorted seafood and kamuchi sauce.','4','assets/images/sushi/sushi4.png',],
['Unagi Nigiri (鰻握り)','Nigiri with fried eel and unagi sauce','4','assets/images/sushi/sushi5.png',],
['Toro Maki (トロ )','Roll with fatty tuna and green onions','4','assets/images/sushi/sushi6.png',],
['Shiso Maki (紫蘇巻き)','Roll with shiso leaves and pickled umeboshi plu','4','assets/images/sushi/sushi7.png',],
['Hana Temari (花手))','Temari sushi in the form of a flower with various fillings','4','assets/images/sushi/sushi8.png',],
['Kani Maki (蟹巻き)','Roll with crab meat and cucumbe','4','assets/images/sushi/sushi9.png',],
['Tai Nigiri (鯛握り)','Nigiri with sea bream and lemon zest','4','assets/images/sushi/sushi10.png',],
['Saba Maki (鯖巻き)','Roll with pickled mackerel and ginger','4','assets/images/sushi/sushi11.png',],
['Ebi Tempura Maki (海天 )','Roll with tempura shrimp and avocado','4','assets/images/sushi/sushi12.png',],
['Maguro Nigiri (鮪握り)','Nigiri with tuna and soy sauce','4','assets/images/sushi/sushi13.png',],
['Ika Temari (烏賊手))','Temari sushi with squid and caviar','4','assets/images/sushi/sushi14.png',],
['Saika Maki (菜花))','Vegetarian roll with broccoli flowers and carrot','4','assets/images/sushi/sushi15.png',],
['Hamachi Nigiri (ハマチ握り)','Nigiri with young yellowtail and green onions','4','assets/images/sushi/sushi16.png',],
];

final List _alcoholData = [
['Sakura no Hikari (桜の光)', 'New, with light fruity floral shades.','4','assets/images/alcohol/sake (1).png',],
['King no Sensei (金のの賢者)', 'Harmony of sweetness and spice, with a mild aftertaste.','4','assets/images/alcohol/sake (2).png',],
['Hana Asobi (花))', 'Light, with an exquisite floral bouquet and refreshing acidity.','4','assets/images/alcohol/sake (3).png',],
['Yoru no Toki (夜の時)', 'Dark, with rich shades of fruit and haze.','4','assets/images/alcohol/sake (4).png',],
['Tae Kiri (透ぎ切り)', 'Pure, with a pronounced taste of rice and spicy notes.','4','assets/images/alcohol/sake (5).png',],
['Kamino Kage (神の影)', 'Fragrant, with rich texture and fruity aftertaste.','4','assets/images/alcohol/sake (6).png',],
['Midori Kaze (緑風)', 'Fresh, with a pleasant green aroma and soft acidity.','4','assets/images/alcohol/sake (7).png',],
['Heishiro no Cohen (閑史郎の響)', 'Powerful, with deep shades of oak and spicy notes.','4','assets/images/alcohol/sake (8).png',],
['Yokai Tori (妖怪鳥)', 'Playful, with bright fruity and spicy shades.','4','assets/images/alcohol/sake (9).png',],
['Umi no Kanata (海の彼方)' , 'Refreshing, with sea freshness and a mineral note.','4','assets/images/alcohol/sake (10).png',],
];


get ramenData => _ramenData;
get sushiData => _sushiData;
get noodleData => _noodleData;
get alcoholData => _alcoholData;




}