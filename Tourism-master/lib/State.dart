import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'StateView.dart';
class States extends StatefulWidget {
  @override
  _StatesState createState() => _StatesState();
}

class _StatesState extends State<States> {
  @override
  Future parsedata()async
  {
    var collectionRef=Firestore.instance;
    QuerySnapshot snap =await collectionRef.collection("States").getDocuments();
    return snap.documents;
  }
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
                    return StateView(imgURL: snapshot.data[index].data['imgURL'],Name: snapshot.data[index].data['Name'],);
                  }),
                ),
              ],
            ),
          );}
      },);
  }
}
