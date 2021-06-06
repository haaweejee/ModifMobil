import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modif_mobil/cars_page.dart';
import 'package:modif_mobil/detailpage_service.dart';
import 'package:modif_mobil/service_page.dart';
import 'package:modif_mobil/model/cars_data.dart';
import 'package:modif_mobil/detailpage_car.dart';

import 'model/service_data.dart';

class Index extends StatefulWidget{
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 50.0,
                ),
                child: Text("Hallo, Hendrawanwib",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25.0, bottom: 10.0, right: 20.0, left: 20.0),
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0XFF3D3C3C),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 4)
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top:5.0)),
                        MaterialButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Cars();
                            }));
                          },
                          color: Colors.blueAccent,
                          child: Icon(Icons.car_rental,
                            size: 24,
                          ),
                          padding: EdgeInsets.all(10),
                          shape: CircleBorder(),
                        ),
                        Padding(padding: EdgeInsets.only(top:5.0)),
                        Text('Beli\nMobil',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top:5.0)),
                        MaterialButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Service();
                            }));
                          },
                          color: Colors.blueAccent,
                          child: Icon(Icons.car_repair,
                            size: 24,
                          ),
                          padding: EdgeInsets.all(10),
                          shape: CircleBorder(),
                        ),
                        Padding(padding: EdgeInsets.only(top:5.0)),
                        Text('Servis\nMobil',
                          textAlign: TextAlign.center,)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 10.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Text('Rekomendasi Mobil',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  FlatButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Cars();
                    }));
                    },
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    child: Text('Lihat Semua',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),

                ],
              ),
              ),
              Container(
                  width: 200,
                  height: 180,
                  child: new ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context,int index) => cardRecommendedCars(context, index)
                  ),
              ),
              Container(
                padding: EdgeInsets.only(top:20.0, left: 20.0, right: 10.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Rekomendasi Service',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FlatButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Service();
                      }));
                    },
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      child:  Text('Lihat Semua',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                width: 200,
                height: 275,

                child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context,int index) => cardService(context, index)
                ),
              ),

            ],
          ),
      ),
    );
  }
  Widget cardRecommendedCars(BuildContext context, int index){
    final recommendedCars = CarsData().carsData[index];
      return FlatButton(
          padding: EdgeInsets.only(left: 10.0),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreenCar(carsTipe: recommendedCars);
            }));
          },
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(right: 20.0)),
              Expanded(child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(recommendedCars.imageAssets,
                width: 200,
                height: 170,
              ),
            ),
            ),
              Padding(padding: EdgeInsets.all(5.0)),
              Text(recommendedCars.nameCars,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
                textAlign: TextAlign.center,
            ),
              Padding(padding: EdgeInsets.all(5.0)),
              Text("Rp.${recommendedCars.priceCars}",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,
            ),
              Padding(padding: EdgeInsets.all(5.0)),
          ],
        ),
      )
      );
    }

  Widget cardService(BuildContext context, int index){
    final serviceCars = ServiceData().serviceData[index];
    return FlatButton(
        padding: EdgeInsets.only(left: 10),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreenService(serviceTipe: serviceCars);
          }));
        }, child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                    Padding(padding: EdgeInsets.only(right: 20.0)),
                    Expanded(
                      flex: 6,
                      child: ClipRRect(
                           borderRadius: BorderRadius.circular(20.0),
                           child: Image.asset(serviceCars.imageAssets,
                             width: 200,
                             height: 170,
                          ),
                        ),
                    ),
                  Expanded(
                    flex: 5,
                      child:Container(padding: EdgeInsets.only(left:5.0,top: 5.0),
                        width: 200,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Text(serviceCars.nameService,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            )
                          ),
                            Padding(padding: EdgeInsets.only(top: 10.0),
                              child: Text('Mulai Dari',
                                style: TextStyle(
                                  fontSize: 11.0,
                                ),
                              ),
                            ),
                          Padding(padding: EdgeInsets.only(left: 10.0,top: 5.0)),
                            Text("Rp.${serviceCars.priceService}",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10.0,top: 5.0,right: 10.0),
                              alignment: Alignment.bottomRight,
                              child: Image.asset("${serviceCars.typeService}",
                                width: 60,
                                height: 30.7,
                              ),
                            )
                            ],
                          ),
                        ),
                      ),
                Padding(padding: EdgeInsets.all(5.0)),
                ],
              ),
            ),
          );
        }


}

