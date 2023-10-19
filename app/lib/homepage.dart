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
Resp? r;



class HomePage extends StatelessWidget {

  Future<Widget> abuild(BuildContext context) async {

    Resp resp = await fetchData() ;
    print('njsdnksadnjklsa');
    r = resp;
    print(r);
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor:
                const Color.fromARGB(255, 82, 74, 74).withOpacity(0.5),
            title: const Text("MinezadaWiki"),
            centerTitle: true,
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://notadogame.com/uploads/game/cover/250x/5bfdc385cc56d.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(

            itemCount: r?.data.length,
            itemBuilder: (context, index) {
              return MySquare(
                item: r!.data.elementAt(index),
              );
            },
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Widget? w;
    abuild(context).then((value) => w = value).whenComplete(() => null);
    print(w);
    Widget widget = w ?? Container();
    return  widget;
  }
}
