import 'package:flutter/material.dart';

import 'itemreceita.dart';

class ItemList  {
  final Iterable<ItemReceita> valuesList;

  ItemList({required this.valuesList});

  List<Widget> generateList() {
    List<Widget> l = [];
    for(final e in valuesList){
      Widget c = Padding(padding: EdgeInsets.only(left: 7.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(e.quantidade,
                style: TextStyle(fontSize: 30, fontFamily: 'minecraft_font')),
            Image.network(e.link
                ,width: 30, height: 30),
          ],

        )
      );
      l.add(c);
    }
    return l;
  }
  }