import 'package:flutter/material.dart';

import 'DetailedCities.dart';
class SampleView extends StatelessWidget {
  String CityName;
  String ImgUrl;
  String Description;
  List<dynamic>Places;
  List<dynamic> images;
  SampleView({this.CityName,this.ImgUrl,this.Description,this.images,this.Places});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailCities(CityName,ImgUrl,Description,images,Places)));
        },
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(ImgUrl)),
              borderRadius:BorderRadius.circular(10),
              boxShadow: <BoxShadow>[BoxShadow(color: Colors.black,blurRadius: 5.0,offset: Offset(1.0,1.0),)]
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(CityName,style: TextStyle(
                  color: Colors.white,fontSize:20.0,fontWeight: FontWeight.w800,
                ),)),
          ),
        ),
      ),
    );
  }
}
