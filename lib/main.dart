import 'package:class_container/HalamanKedua.dart';
import 'package:class_container/HalamanKetiga.dart';
import 'package:class_container/HalamanPertama.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: HalamanHome(), debugShowCheckedModeBanner: false,
    );
  }
}

class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Column(
          children: <Widget>[
            Text(
              "Ini adalah halaman Home",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text("Nama Lengkap : Ragil Putri Rahmadani"),
            Text("Kelas : XII RPL 5"),
            Text("No Absen : 13"),
            new MaterialButton(
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanPertama() ));
            }, child: Text("Halaman Pertama"),
              color: Colors.orange,
              textColor: Colors.black,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua() ));
              }, child: Text("Halaman Kedua"),
              color: Colors.blueAccent,
              textColor: Colors.black,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKetiga() ));
              }, child: Text("Halaman Ketiga"),
              color: Colors.red,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}




