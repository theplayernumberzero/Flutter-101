import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza", style: TextStyle(color: yaziRenk1, fontFamily: "Pacifico", fontSize: 22)),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text("Lominos", style: TextStyle(fontSize: 36, color: anaRenk, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("resimler/pizza_resim.png",width: 350,height: 350,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){},
                    style: TextButton.styleFrom(backgroundColor: anaRenk),
                    child: Text("Cheese", style: TextStyle(color: yaziRenk1),),
                ),
                TextButton(onPressed: (){},
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                  child: Text("Sausage", style: TextStyle(color: yaziRenk1),),
                ),
                TextButton(onPressed: (){},
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                  child: Text("Olive", style: TextStyle(color: yaziRenk1),),
                ),
                TextButton(onPressed: (){},
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                  child: Text("Pepper", style: TextStyle(color: yaziRenk1),),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
