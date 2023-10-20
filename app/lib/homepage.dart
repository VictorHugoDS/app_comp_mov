import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mine/structs.dart';
import 'connection.dart';
import 'square.dart';

/*
url
https://static.wikia.nocookie.net/minecraft-computer/images/b/b2/Torch.png/revision/latest?cb=20130930145829
'https://static.wikia.nocookie.net/minecraft_gamepedia/images/d/d5/Wooden_Sword_JE2_BE2.png/revision/latest/scale-to-width/360?cb=20200217235747'
child: Container(
          height: 200,
          color: Colors.deepPurple[200],
          child: Center(
              child: Text(
            texto,
            style: TextStyle(fontSize: 30),
          )),
        )); */


class HomePage extends StatefulWidget {



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<Itens>? listItens;

  @override
  void initState() {
    listItens = fakeFetchData();
  }

  @override
  Widget build(BuildContext context) {
    // while(body == null){
    //   continue;
    // }
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor:
            const Color.fromARGB(255, 82, 74, 74).withOpacity(0),
            title: Image.asset('assets/image/WikiCraft.png'),
            centerTitle: true,
          )
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://images6.alphacoders.com/131/1313226.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(

            itemCount: listItens?.length,
            itemBuilder: (context, index) {
              return MySquare(
                item: listItens?.elementAt(index),
              );
            },
          ),
        ));
  }
}
