

import 'package:flutter/material.dart';

class About extends StatefulWidget{
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 40),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f47d4de7637290765bce495%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D1398%26cropX2%3D3908%26cropY1%3D594%26cropY2%3D3102"
                    ),
                  )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 400,
            height: 200,
            decoration: BoxDecoration(
                color: Color(0XFF454545),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 4
                  ),
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10),
                        child: Text('Informasi Akun',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                ),
                Padding(padding: EdgeInsets.all(10),
                    child: Text('Username',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                ),
                Padding(padding: EdgeInsets.all(10),
                    child: Text('Hendrawanwib',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                ),
                Padding(padding: EdgeInsets.all(10),
                    child: Text('Nama Lengkap',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                ),
                Padding(padding: EdgeInsets.all(10),
                    child: Text('Hendrawan Wibowo Jatmiko',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                ),



              ],
            ),
          )

        ],
      ),
    );
  }
}