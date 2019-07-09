import 'package:flutter/material.dart';
class prevenew extends StatelessWidget {
  String imgURL;
  String Name;
  prevenew({this.imgURL,this.Name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Container(

                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imgURL), fit: BoxFit.cover,
                    ),
              //   borderRadius:BorderRadius.circular(50),
                    //boxShadow: <BoxShadow>
                   // [BoxShadow(color: Colors.black,blurRadius: 15.0,offset: Offset(1.0,2.0),)]
                ),

              ),

            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(Name,style: TextStyle(
                color: Colors.black,fontSize:20.0,
              ),)),
        ),
      ],

    );
  }
}
