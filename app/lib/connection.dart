import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mine/structs.dart';

String s = "{\"itens\":[{\"nome\":\"Tocha\",\"classificacao\":\"https://minecraft.wiki/images/Grass_Block.png?a10cd\",\"info\":\"64stack\",\"icon\":\"https://minecraft.wiki/images/Torch.gif?462d6\",\"craft\":[{\"quantidade\":1,\"nome\":\"Carvão\",\"icon\":\"https://minecraft.wiki/images/Coal.png?165e9\"},{\"quantidade\":1,\"nome\":\"CarvãoVegetal\",\"icon\":\"https://minecraft.wiki/images/Charcoal_JE4_BE4.png?9a1ec\"},{\"quantidade\":1,\"nome\":\"Graveto\",\"icon\":\"https://minecraft.wiki/images/Stick_JE1_BE1.png?1fc15\"}]},{\"nome\":\"EspadadeMandeira\",\"classificacao\":\"https://minecraft.wiki/images/Iron_Sword_JE2_BE2.png?62770\",\"info\":\"4\",\"icon\":\"https://minecraft.wiki/images/Wooden_Sword_JE2_BE2.png?065ee\",\"craft\":[{\"quantidade\":2,\"nome\":\"Taboa\",\"icon\":\"https://minecraft.wiki/images/Oak_Planks.png?d9efa\"},{\"quantidade\":1,\"nome\":\"Graveto\",\"icon\":\"https://minecraft.wiki/images/Stick_JE1_BE1.png?1fc15\"}]},{\"nome\":\"EspadadeFerro\",\"classificacao\":\"https://minecraft.wiki/images/Iron_Sword_JE2_BE2.png?62770\",\"info\":\"4\",\"icon\":\"https://minecraft.wiki/images/Iron_Sword_JE2_BE2.png?62770\",\"craft\":[{\"quantidade\":2,\"nome\":\"Lingotedeferro\",\"icon\":\"https://minecraft.wiki/images/Iron_Ingot.png?849cb\"},{\"quantidade\":1,\"nome\":\"Graveto\",\"icon\":\"https://minecraft.wiki/images/Stick_JE1_BE1.png?1fc15\"}]},{\"nome\":\"Cookie\",\"classificacao\":\"https://minecraft.wiki/images/Cooked_Chicken_JE3_BE3.png?3f3d8\",\"info\":\"2\",\"icon\":\"https://minecraft.wiki/images/Cookie_JE2_BE2.png?a911c\",\"craft\":[{\"quantidade\":1,\"nome\":\"Cacao\",\"icon\":\"https://minecraft.wiki/images/Cocoa_Beans.png?48f20\"},{\"quantidade\":2,\"nome\":\"Trigo\",\"icon\":\"https://minecraft.wiki/images/Wheat.png?b8cd3\"}]},{\"nome\":\"Estante\",\"classificacao\":\"https://minecraft.wiki/images/Grass_Block.png?a10cd\",\"info\":\"64stack\",\"icon\":\"https://minecraft.wiki/images/Bookshelf_JE4_BE2.png?9b143\",\"craft\":[{\"quantidade\":6,\"nome\":\"Taboa\",\"icon\":\"https://minecraft.wiki/images/Oak_Planks.png?d9efa\"},{\"quantidade\":3,\"nome\":\"Livro\",\"icon\":\"https://minecraft.wiki/images/Book_JE2_BE2.png?caac6\"}]},{\"nome\":\"Bolo\",\"classificacao\":\"https://minecraft.wiki/images/Cooked_Chicken_JE3_BE3.png?3f3d8\",\"info\":\"Semstack\",\"icon\":\"https://minecraft.wiki/images/Cake.png?009f2\",\"craft\":[{\"quantidade\":3,\"nome\":\"Leite\",\"icon\":\"https://minecraft.wiki/images/Milk_Bucket_JE2_BE2.png?99ff1\"},{\"quantidade\":3,\"nome\":\"Trigo\",\"icon\":\"https://minecraft.wiki/images/Wheat.png?b8cd3\"},{\"quantidade\":2,\"nome\":\"Acuçar\",\"icon\":\"https://minecraft.wiki/images/Sugar.png?9185b\"},{\"quantidade\":1,\"nome\":\"Ovo\",\"icon\":\"https://minecraft.wiki/images/Egg.png?495d9\"}]},{\"nome\":\"PicaretadeDiamante\",\"classificacao\":\"https://minecraft.wiki/images/Diamond_Pickaxe_JE3_BE3.png?7409d\",\"info\":\"Durabilidade1562\",\"icon\":\"https://minecraft.wiki/images/Diamond_Pickaxe_JE3_BE3.png?7409d\",\"craft\":[{\"quantidade\":3,\"nome\":\"Diamante\",\"icon\":\"https://minecraft.wiki/images/Diamond_JE3_BE3.png?99d00\"},{\"quantidade\":2,\"nome\":\"Graveto\",\"icon\":\"https://minecraft.wiki/images/Stick_JE1_BE1.png?1fc15\"}]},{\"nome\":\"Cama\",\"classificacao\":\"https://minecraft.wiki/images/Grass_Block.png?a10cd\",\"info\":\"NãoStaka\",\"icon\":\"https://minecraft.wiki/images/Purple_Bed.png?e0365\",\"craft\":[{\"quantidade\":3,\"nome\":\"taboa\",\"icon\":\"https://minecraft.wiki/images/White_Wool_JE2_BE2.png?2bcdc\"},{\"quantidade\":3,\"nome\":\"lã\",\"icon\":\"https://minecraft.wiki/images/White_Wool_JE2_BE2.png?2bcdc\"}]}]}";


 Future<List<Itens>?> fetchData() async {

  final response = await http
       .get(Uri.parse('http://localhost:8080/get_list'));
  if (response.statusCode == 200) {
     // If the server did return a 200 OK response,
    // then parse the JSON.
     var b = response.body;

    var a = ApiReturn.fromJson(json.decode(b));
      print(a);

     return a.itens;
   } else {
     // If the server did not return a 200 OK response,
     // then throw an exception.
    throw Exception('Failed to load Response');
   }
 }

List<Itens>? fakeFetchData (){
  var a = ApiReturn.fromJson(json.decode(s));
  print(a.itens);
  return a.itens;
}

 void main() {
  var  i;
  print("começou");
   fetchData().then(
           (value) => print(value)
   ).whenComplete(() => null);
}