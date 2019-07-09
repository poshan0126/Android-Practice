import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'UnescoView.dart';
class Unesco extends StatefulWidget {
  @override
  _UnescoState createState() => _UnescoState();
}

class _UnescoState extends State<Unesco> {

  Future parsedata()async
  {
    var collectionRef=Firestore.instance;
    QuerySnapshot snap =await collectionRef.collection("Unesco").getDocuments();
    return snap.documents;
  }

  @override
  Widget build(BuildContext context) {
    return      FutureBuilder(
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
                  height: 200.0,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount:snapshot.data.length
                      ,itemBuilder:(_,index){
                    return UnescoView(imgURL: snapshot.data[index].data['imgURL'],);
                  }),
                ),
              ],
            ),
          );}
      },);

  }
}
