import 'package:flutter/material.dart';
import 'package:modif_mobil/detailpage_service.dart';
import 'package:modif_mobil/model/service_data.dart';

class Service extends StatefulWidget{
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Service'),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: ServiceData().serviceData.length,
          itemBuilder: (BuildContext context,int index) => cardItem(context, index)),
    );
  }
}

Widget cardItem(BuildContext context, int index){
  final serviceList = ServiceData().serviceData[index];
  return FlatButton(
      padding: EdgeInsets.only(left: 10, top: 5, right: 10),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreenService(serviceTipe: serviceList);
        }));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(serviceList.imageAssets,
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
                  child: Text(serviceList.nameService,
                    style: TextStyle(fontSize: 15,  fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container( padding: EdgeInsets.only(left: 10.0,top: 5.0),
                    width: 230,
                    child: Text('Mulai Dari',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    )
                ),
                Container( padding: EdgeInsets.only(left: 10.0,top: 5.0),
                    width: 230,
                    child: Text('Rp. ${serviceList.priceService}',
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