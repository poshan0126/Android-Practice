import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class StALL extends StatefulWidget {
  @override
  _StALLState createState() => _StALLState();
}

class _StALLState extends State<StALL> {
  String imgUrl;
  StreamSubscription<QuerySnapshot>subscription;
  List<DocumentSnapshot> statesList;
  final CollectionReference collectionReference=Firestore.instance.collection("States");
 @override
  void initState()
  {
    super.initState();
    subscription=collectionReference.snapshots().listen((datasnapshots){
      setState(() {
        statesList=datasnapshots.documents;
      });
    }) ;
  }
  @override
  void dispose()
  {
    subscription?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("States"),),
      body: statesList!=null?
          new StaggeredGridView.countBuilder(
            padding: const EdgeInsets.all(8.0),
            crossAxisCount: 4,
            itemCount: statesList.length,
            itemBuilder: (context,i){
              String imgUrl=statesList[i].data['imgURL'];
              String Name=statesList[i].data['Name'];
              return new Material(
                elevation: 8.0,
                borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
                child: InkWell(
                  child: new Hero(tag: imgUrl, child: FadeInImage(image: NetworkImage(imgUrl),
                  fit: BoxFit.cover,
                    placeholder: new AssetImage("assets/PI.jpg"),
                  )),
                )
              );
            },
            staggeredTileBuilder: (i)=>new StaggeredTile.count(2,i.isEven?2:3),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ):new Center (
        child: new CircularProgressIndicator(),
      )
    );}
}
