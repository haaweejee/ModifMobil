import 'package:flutter/material.dart';
import 'package:modif_mobil/model/cars_tipe.dart';

class DetailScreenCar extends StatelessWidget{
  final CarTipe carsTipe;

  DetailScreenCar({@required this.carsTipe});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0XFF1F1F1F),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(carsTipe.imageAssets,width: 500,),
                SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                          Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: 200,
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
                  Text(carsTipe.nameCars,
                  style: TextStyle(fontSize: 24.0,
                  fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text("Rp.${carsTipe.priceCars}",
                  style: TextStyle(fontSize: 18.0,
                  fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0,top: 10.0),
              child: Text("Spesifikasi",
              style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.normal),),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0XFF454545),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [BoxShadow(
                  color: Colors.black,
                  blurRadius: 4
                )]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Tipe: ${carsTipe.tipeCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Merek: ${carsTipe.merkCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Tahun: ${carsTipe.yearsCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Transmisi: ${carsTipe.tranmisitionCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Mesin: ${carsTipe.engineCars} CC",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Penggerak: ${carsTipe.drivetrainCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("KM: ${carsTipe.kmCars} KM",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Kondisi: ${carsTipe.conditionCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                    ],
                  ),),
                  Padding(padding: EdgeInsets.all(10)),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Warna: ${carsTipe.colorCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Jumlah Pintu: ${carsTipe.doorCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Kapasitas Penumpang: ${carsTipe.capacityCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Bahan Bakar: ${carsTipe.gasolineCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Silinder: ${carsTipe.silindersCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Tenaga Mesin: ${carsTipe.hpCars} Hp",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                      Text("Plat Nomor: ${carsTipe.lincenseCars}",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                      Padding(padding: EdgeInsets.only(top:5.0)),
                    ],
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0,top: 10.0),
              child: Text("Catatan Sales",
                style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.normal),),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0XFF454545),
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 4
                  )]
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Kondisi Mobil 90% Mulus\nCocok Untuk anda yang ingin kebut-kebutan di circuit\nPajak Sebesar 54 Juta\nhanya melayani pembelian cash\ndatang keshowroom atau hubungi sales jika berminat.",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0,top: 10.0),
              child: Text("Data Sales",
                style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.normal),),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0XFF454545),
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 4
                  )]
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    width: 100,
                    height: 100,
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
                  Container(
                    margin: EdgeInsets.only(left: 80.0,),
                    child:Column(
                      children: <Widget>[
                        Text("Elon Musk", style: TextStyle(fontSize: 26.0,fontWeight: FontWeight.bold),),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        RaisedButton(onPressed: null,
                          child: Text("Hubungi Sales"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}