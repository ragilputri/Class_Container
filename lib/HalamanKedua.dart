import 'package:flutter/material.dart';

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      child: Image.asset('images/Smk.jpg'),
    );
    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'SMK TELKOM SANDHY PUTRA PURWOKERTO',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
    Widget descriptionSection = Container(
        padding: EdgeInsets.all(16),
        child: Text(
          'SMK Telkom Purwokerto adalah SMK swasta bergengsi yang merupakan sekolah '
              'telekomunikasi terbaik se-Indonesia. SMK Telkom Purwokerto beralamat '
              'di JL. DI Panjaitan No.128, Karangreja, Purwokerto Kulon, Kec. Purwokerto Selatan, '
              'Kab. Banyumas, Jawa Tengah',
          textAlign: TextAlign.justify,
        )
    );
    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black,),
          title: Text(
            "SMK Telkom Purwokerto",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            Icon(Icons.search, color: Colors.black,)
          ],
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
            ),
          ],
        ),
      )
    );
  }
}