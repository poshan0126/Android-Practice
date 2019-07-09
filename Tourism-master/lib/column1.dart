import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'col1sample.dart';
class column1 extends StatefulWidget {
  @override
  _column1State createState() => _column1State();
}

class _column1State extends State<column1> {
  Future parsedata()async{
    var collectionRef=Firestore.instance;
    QuerySnapshot snap =await collectionRef.collection("Row").getDocuments();
    return snap.documents;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      parsedata();

    });
  }

  Widget build(BuildContext context) {
    return FutureBuilder(
        future: parsedata(),
    builder:(_,snapshot) {
    if(snapshot.connectionState==ConnectionState.waiting)
    {
    return Center(
    child: Text("Loading"),
    );}
else{
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 180,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
physics: BouncingScrollPhysics(),
            itemCount:snapshot.data.length
            ,itemBuilder:(_,index){
            return prevenew(imgURL: snapshot.data[index].data['imgURL'],Name: snapshot.data[index].data['Name'],);
            }),
          ),
        ],
      ),
    );}
    },);

  }
}


