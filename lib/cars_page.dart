import 'package:flutter/material.dart';
import 'package:modif_mobil/detailpage_car.dart';
import 'package:modif_mobil/model/cars_data.dart';

class Cars extends StatefulWidget{
  @override
  _CarsState createState() => _CarsState();
}

class _CarsState extends State<Cars>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Cars'),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: CarsData().carsData.length,
          itemBuilder: (BuildContext context,int index) => cardItem(context, index)),
    );
  }
}

Widget cardItem(BuildContext context, int index){
  final carsList = CarsData().carsData[index];
  return FlatButton(
    padding: EdgeInsets.only(left: 10, top: 5, right: 10),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DetailScreenCar(carsTipe: carsList);
      }));
    },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(carsList.imageAssets,
            width: 125,
            height: 86,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(padding: EdgeInsets.only(top: 10.0,left: 10.0),
              width: 230,
              child: Text(carsList.nameCars,
                style: TextStyle(fontSize: 15,  fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,
              ),
            ),
            Container( padding: EdgeInsets.only(left: 10.0,top: 5.0),
                width: 230,
                child: Text('Rp. ${carsList.priceCars}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                )
            ),
            Container( padding: EdgeInsets.only(left: 10.0,top: 5.0),
                width: 230,
                child: Text(carsList.yearsCars,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                )
            ),
          ],
        )
      ],
    ),
  ));
}