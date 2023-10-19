import 'package:flutter/material.dart';
import 'package:mine/itemlist.dart';
import 'package:mine/structs.dart';


class MySquare extends StatelessWidget {
  final Item item;

  const MySquare({super.key, required this.item});




  @override
  Widget build(BuildContext context) {
    var receita = item.receita;
    ItemList itemList = ItemList(valuesList: receita);
    return  Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        height: 200,
        margin: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
        border: Border.all(
        color: Colors.transparent, width: 5.0, style: BorderStyle.solid),
        color: const Color.fromARGB(255, 105, 105, 105).withOpacity(0.5)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network('https://minecraft.wiki/images/Bucket_of_Pufferfish_JE2_BE2.png?5fdfe'
              ,width: 50, height: 50),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(item.nome,
                            style: const TextStyle(fontSize: 30, fontFamily: 'minecraft_font')),
                        Image.network('https://minecraft.wiki/images/Bucket_of_Pufferfish_JE2_BE2.png?5fdfe'
                            ,width: 20, height: 20),
                      ],
                    ),
                    Text(item.info,
                        style: const TextStyle(fontSize: 15, fontFamily: 'RobotoMono')),
                    ],
                ),
              const SizedBox.shrink(),
              const SizedBox.shrink(),
              const SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: itemList.generateList()
                ),
              )

              ]
        )
      )
    );}
}


/*    return Padding(
        padding: EdgeInsets.only(top: 15.0),
        child: Container(
          height: 200,
          margin: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.transparent, width: 5.0, style: BorderStyle.solid),
              color: Color.fromARGB(255, 105, 105, 105).withOpacity(0.5)),
          child: GestureDetector(
            onTap: () {
              print("Container clicked");
            },
            child: Column(
              children: [
                Container(
                    height: 150,
                    color: const Color.fromARGB(255, 105, 105, 105)
                        .withOpacity(0.0),
                    child: Image.network(url)),
                Text(texto,
                    style: TextStyle(fontSize: 30, fontFamily: 'RobotoMono'))
              ],
            ),
          ),
        ));*/