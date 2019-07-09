import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'StALL.dart';
import 'Unesco.dart';
import 'column1.dart';
import 'State.dart';

class Mainpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text("Risav"),),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('ADD TRIP'),
            leading: Icon(Icons.terrain,color: Colors.lightGreen,size: 36.0,),
          ),
        ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('SEARCH TRIP',),
                leading: Icon(Icons.search,color: Colors.cyanAccent,size: 36.0,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Curreny Recognition',),
                leading: Icon(Icons.directions_railway,color: Colors.tealAccent,size: 36.0,),
              ),
            ),InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Currency Converter',),
                leading: Icon(Icons.search,color: Colors.lightGreen,size: 36.0,),
              ),
            ),InkWell(
        onTap: (){},
    child: ListTile(
    title: Text('Faviorates'),
    leading: Icon(Icons.favorite,color: Colors.purpleAccent,size: 36.0,),
    ),
    )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Expanded(
              flex:1,
              child: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){})),
          Expanded(
              flex :1,
              child: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){})),
        ],
      ),
      appBar: AppBar(title: TextFormField(
        decoration: InputDecoration(icon: Container(margin: EdgeInsets.only(left: 20.0),child: Icon(Icons.search),)),),),
      body: SingleChildScrollView(
        child: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 colors: [
//                   const Color(0xff079CFF),
//                   const Color(0xff19F193),
//                 ]
//             )
//         ),
          child: Column(

//fit: StackFit.expand,
            children: <Widget>[

              Padding(
                 padding: const EdgeInsets.fromLTRB(4.0,5.0,1.0,0),
                 child:Align(
                     alignment: Alignment.topLeft,
                     child: Text("POPULAR",style: TextStyle(fontWeight: FontWeight.bold, fontSize:16.0,))),),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Homepage(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4.0,8.0, 1.0,2.0),
                child:Align(
                  alignment: Alignment.topLeft,
                  child: Text("CATEGORIES",style: TextStyle(fontWeight: FontWeight.bold, fontSize:16.0,
                  )),),),
              Padding(
                padding: const EdgeInsets.fromLTRB(1.0,1.0,1.0,1.0),
                child: column1(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4.0,0.0,1.0,2.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("UNESCO HERITAGE SITES NEPAL",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:16.0,

                  ),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.fromLTRB(1.0,8.0,1.0,1.0),
                child: Unesco(),
              ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(4.0,8.0,1.0,1.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("ACROSS STATES",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:18.0,

                            ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>StALL()));
    },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(4.0,8.0,1.0,1.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text("View All",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:18.0,

                              ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(1.0,8.0,1.0,1.0),
                child: States(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
