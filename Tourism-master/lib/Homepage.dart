import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Preview.dart';
class Homepage extends StatefulWidget {
  @override
  Homepagestate createState()=>Homepagestate();

}
class Homepagestate extends State<Homepage>{


  Future parsedata()async
  {
    var collectionRef=Firestore.instance;
    QuerySnapshot snap =await collectionRef.collection("Cities").getDocuments();
    return snap.documents;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      parsedata();
      // parsedata_second()
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
     FutureBuilder(
      future: parsedata(),
      builder:(_,snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting)
        {
          return Center(
            child: Text("Loading"),
          );
        }
        else{
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 250,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount:snapshot.data.length
                    ,itemBuilder:(_,index){
                  return SampleView(CityName: snapshot.data[index].data['Name'],
                  ImgUrl: snapshot.data[index].data['imgURL'],
                  Description:snapshot.data[index].data['Description'],
                  images:snapshot.data[index].data['images'],
                  Places:snapshot.data[index].data['Places'],);
                }),
              ),
            ],
          ),
        );}
      },);

  }

}

