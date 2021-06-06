import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modif_mobil/model/service_tipe.dart';


class DetailScreenService extends StatelessWidget {

  final ServiceTipe serviceTipe;

  DetailScreenService({@required this.serviceTipe});

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
                Image.asset(serviceTipe.imageAssets),
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
                  Text(serviceTipe.nameService,
                    style: TextStyle(fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5.0),
                    child: Text('Mulai Dari',
                      style: TextStyle(
                        fontSize: 11.0,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 3.0)),
                  Text("Rp.${serviceTipe.priceService}",
                    style: TextStyle(fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Jenis Produk\n${serviceTipe.productService}',
                    style: TextStyle(fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: <Widget>[
                      Text("Jenis Service",
                        style: TextStyle(fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5.0),
                      ),
                      Image.asset("${serviceTipe.typeService}",
                        width: 60,
                        height: 30.7,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,left:10,right:10 ),
              child: Text(
                'Deksripsi',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 RichText(
                     text: TextSpan(
                       text: 'Flat Price : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                       children: [
                         TextSpan(text: serviceTipe.flatPrice, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal))
                       ]
                     )
                 ),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  RichText(
                      text: TextSpan(
                          text: 'Recommended : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: serviceTipe.recommendedFor, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal))
                          ]
                      )
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  RichText(
                      text: TextSpan(
                          text: 'Spesifikasi ${serviceTipe.productService} : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                  ),
                  getTextWidgets(serviceTipe.specsItem),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  RichText(
                      text: TextSpan(
                        text: 'Lisensi: ${serviceTipe.productService} : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                  ),
                  getTextWidgets(serviceTipe.licenceProduct),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  RichText(
                      text: TextSpan(
                        text: 'Recommendasi Mobil ${serviceTipe.productService} : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                  ),
                  getTextWidgets(serviceTipe.recommendedRequirenmet),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  RichText(
                      text: TextSpan(
                        text: 'Packet Include : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                  ),
                  getTextWidgets(serviceTipe.packetInclude),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  RichText(
                      text: TextSpan(
                        text: 'Benefit : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                  ),
                  getTextWidgets(serviceTipe.benefitService),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  RichText(
                      text: TextSpan(
                          text: 'SOP Mechanics : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: serviceTipe.sopMechanics, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal))
                          ]
                      )
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  RichText(
                      text: TextSpan(
                        text: 'Voucher Intructions : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                  ),
                  getTextWidgets(serviceTipe.voucherInstruction),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  RichText(
                      text: TextSpan(
                        text: 'More Info : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                  ),
                  getTextWidgets(serviceTipe.moreInfo),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  RichText(
                      text: TextSpan(
                          text: 'Contacts : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: serviceTipe.contacs, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal))
                          ]
                      )
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



Widget getTextWidgets(List<String> strings)
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: strings.map((item) => new Text(item)).toList());
}