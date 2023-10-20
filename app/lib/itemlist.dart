import 'package:flutter/material.dart';
import 'package:mine/structs.dart';


class ItemList  {
  final Iterable<Craft>? valuesList;

  ItemList({required this.valuesList});

  List<Widget> generateList() {
    List<Widget> l = [];

    for(final e in valuesList!){
      print(e);
      Widget c = Padding(padding: EdgeInsets.only(left: 7.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text((e.quantidade.toString()),
                style: TextStyle(color: Colors.white,fontSize: 30, fontFamily: 'minecraft_font')),
            Image.network(e.icon.toString()
                ,width: 30, height: 30),
          ],

        )
      );
      l.add(c);
    }
    return l;
  }
  }