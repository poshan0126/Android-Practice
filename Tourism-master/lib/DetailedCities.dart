import 'package:flutter/material.dart';
class DetailCities extends StatelessWidget {
  String CityName;
  String imgURL;
  String Description;
  List<dynamic>Places;
  List<dynamic> images;
  DetailCities(this.CityName,this.imgURL,this.Description,this.images,this.Places);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(1.0, 20.0, 1.0, 0.0),
            child: Container(
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(this.CityName,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20.0),)),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                height: 300,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(4.0,8.0,4.0,0.0),
                  child: Container(
                    height: 250,
                    width:double.infinity,
                    decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(imgURL),fit: BoxFit.cover),borderRadius: BorderRadius.circular(8.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,250,20,8),
                child: Card(child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18,8,18,8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      IconButton(icon: Icon(Icons.description),onPressed: (){},iconSize: 40,),

      IconButton(

        icon: Icon(Icons.directions_bus,),  onPressed:() {},iconSize: 40,
      ),
      IconButton(
        icon: Icon(Icons.location_on), iconSize: 40,onPressed: (){},
      ),
    ],
    ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(child: Text(this.Description)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))),
              ),

            ],
          ),
    ],
      ),
    );
  }
}
