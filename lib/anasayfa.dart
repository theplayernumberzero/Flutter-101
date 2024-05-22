import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
            child: Image.asset("resimler/pizza_resim.png",width: 250,height: 250,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: "Cheese"),
                Chip(icerik: "Sausage"),
                Chip(icerik: "Olive"),
                Chip(icerik: "Pepper"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text("30 min", style: TextStyle(fontSize: 22, color: yaziRenk2, fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Delivery", style: TextStyle(fontSize: 22, color: anaRenk, fontWeight: FontWeight.bold),),
                ),
                Text("Pizza lover, get ready to meet your pizza!",
                  style: TextStyle(fontSize: 22, color: yaziRenk2),
                  textAlign: TextAlign.center,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text("\$12.99", style: TextStyle(fontSize: 44, color: anaRenk, fontWeight: FontWeight.bold),),
                SizedBox(width: 200, height: 50,
                  child: TextButton(onPressed: (){},
                    style: TextButton.styleFrom(
                        backgroundColor: anaRenk,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    child: Text("ADD TO CART", style: TextStyle(color: yaziRenk1, fontSize: 18),),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      style: TextButton.styleFrom(backgroundColor: anaRenk),
      child: Text(icerik, style: TextStyle(color: yaziRenk1),),
    );
  }
}
