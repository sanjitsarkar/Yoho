import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
   var width = MediaQuery.of(context).size.width;
      var  height = MediaQuery.of(context).size.height;
    return Scaffold(
         bottomNavigationBar: BottomNavigationBar(
       currentIndex: 0, 
       backgroundColor: Colors.orangeAccent,
       selectedItemColor: Colors.white,
       unselectedItemColor: Colors.white70,
       // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           title: new Text('Messages'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )
       ],
     ),
       appBar: AppBar(
          // leading: IconButton(icon: Icon(Icons.menu,color: Colors.white,size: 30.0), onPressed: ()=>
          // {
          //   Scaffold.of(context).openDrawer()
          // }),
         backgroundColor: Colors.orangeAccent,
         
         elevation: 0,
         title: Text("YoHo",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize: 30.0),),
         centerTitle: true,
        //  leading:  IconButton(icon: Icon(Icons.notifications,color: Colors.orangeAccent,size: 30.0), onPressed: null),
         actions: <Widget>[
           IconButton(icon: Icon(Icons.notifications,color: Colors.white,), onPressed: null)
         ],
       ),
       drawer: Drawer(
         
        child:ListView(
        shrinkWrap: true,
          children: <Widget>[
           
            Container(
              
              height:150.0,
              decoration: BoxDecoration(
                color:Colors.orangeAccent,
                borderRadius: BorderRadiusDirectional.only(bottomStart:Radius.circular(50.0),bottomEnd:Radius.circular(0.0)  )
              ),
              child: Column(
                children: <Widget>[
                
                Container(
                  width: 70.0,
                  height: 70.0,
                  margin: EdgeInsets.only(top:10.0),
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(100.0),
                    color:Colors.white,
                  ),
                  child: IconButton(icon: Icon(Icons.person_add,color: Colors.white,size: 50.0), onPressed: null,alignment: Alignment.center,)),
                Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Text("Xanjit Xarkar",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),
                Text("xanjit@xarkar.in",style: TextStyle(color: Colors.white,fontSize: 20.0),)
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            Column(
              
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
Container(
            
              padding: const EdgeInsets.symmetric(vertical:5.0),
              decoration: BoxDecoration(
                
                ////border: Border(bottom: BorderSide(width: 1.5,color:Colors.orangeAccent)),,
                 
              ),

              child: ListTile(
                dense: false,
                leading:IconButton(icon: Icon(Icons.account_circle,color:Colors.orangeAccent,size:30.0), onPressed: null) ,
                title: Text("Account",style: TextStyle(color:Colors.orangeAccent,fontSize: 20.0),),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical:5.0),
           
              decoration: BoxDecoration(
                
                //border: Border(bottom: BorderSide(width: 1.5,color:Colors.orangeAccent)),
              ),

              child: ListTile(
                dense: false,
                leading:IconButton(icon: Icon(Icons.message,color:Colors.orangeAccent,size:30.0), onPressed: null) ,
                title: Text("Message",style: TextStyle(color:Colors.orangeAccent,fontSize: 20.0),),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical:5.0),
              decoration: BoxDecoration(
                
                //border: Border(bottom: BorderSide(width: 1.5,color:Colors.orangeAccent)),
              ),

              child: ListTile(
                dense: false,
                leading:IconButton(icon: Icon(Icons.info,color:Colors.orangeAccent,size:30.0), onPressed: null) ,
                title: Text("About",style: TextStyle(color:Colors.orangeAccent,fontSize: 20.0),),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical:5.0),
              decoration: BoxDecoration(
                
                //border: Border(bottom: BorderSide(width: 1.5,color:Colors.orangeAccent)),
              ),

              child: ListTile(
                dense: false,
                leading:IconButton(icon: Icon(Icons.share,color:Colors.orangeAccent,size:30.0), onPressed: null) ,
                title: Text("Share",style: TextStyle(color:Colors.orangeAccent,fontSize: 20.0),),
              ),
            )
              ],
            ),
            
          ],
        )
      ),
       body: ListView(
         
children: <Widget>[
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    
    children: <Widget>[
      SizedBox(height:20.0),
      Padding(
        padding: const EdgeInsets.only(left:30.0),
        child: Text("Find your desired \nroom",style: TextStyle(fontSize: 30.0,color:Colors.grey[600]),),
      ),
    SizedBox(height:20.0),
      Container(
        margin:const EdgeInsets.only(left:30.0) ,
        padding: EdgeInsets.symmetric(horizontal:20.0,vertical:0.0),
      width:300.0,
  
        decoration: BoxDecoration(
          
          color: Colors.orangeAccent.withOpacity(.9),
          borderRadius: BorderRadius.circular(100.0)
        ),
        child: TextField(
          autofocus: false,
          style:  TextStyle(color: Colors.white),
          
          decoration: InputDecoration(
          
            suffixIcon: Icon(Icons.search,color: Colors.white,),
          border: InputBorder.none,
          // contentPadding: EdgeInsets.symmetric(horizontal:10.0),
          filled: false,
          fillColor: Colors.white,
          
          hintText:"Search PG/Hostels...",
          hintStyle:TextStyle(color: Colors.white)
          ),
          
        ),
      ),
Padding(
  padding: const EdgeInsets.all(30.0),
  child:   Column(
  
  
  
    crossAxisAlignment: CrossAxisAlignment.center,
  
    mainAxisAlignment: MainAxisAlignment.center,
  
    children: <Widget>[
  
      Row(
  
        
  
        children: <Widget>[
  
  Card(
  elevation: 3.0,
  
    child: Container(
  alignment: Alignment.center,
      width:width/2.55,
  
      height: height/5,
  decoration: BoxDecoration(color: Colors.white),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        
             Image.asset("assets/icons/male.png", height: height/15,width: width,),
          SizedBox(height:8.0),
          Text("Boys",style: TextStyle(color:Colors.orangeAccent,fontSize: 20.0,fontWeight: FontWeight.w700),),
        ],
      )
  
    ),
  
  ),Card(
  elevation: 3.0,
  
    child: Container(
  width:width/2.55,
  
      height: height/5,
    child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        
             Image.asset("assets/icons/female.png", height: height/15,width: width,),
          SizedBox(height:8.0),
          Text("Girls",style: TextStyle(color:Colors.orangeAccent,fontSize: 20.0,fontWeight: FontWeight.w700),),
        ],
      )
  
    ),
  
  )
  
      ],),
  
      Row(children: <Widget>[
  
        Card(
 
  elevation: 3.0,
    child: Container(
 width:width/2.55,
  
      height: height/5,
       child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        
             Image.asset("assets/icons/family-in-home.png", height: height/15,width: width,),
          SizedBox(height:8.0),
          Text("Family",style: TextStyle(color:Colors.orangeAccent,fontSize: 20.0,fontWeight: FontWeight.w700),),
        ],
      )
  
    ),
  
  ),Card(
  elevation: 3.0,
  
    child: Container(
  width:width/2.55,
  
      height: height/5,
      decoration: BoxDecoration(color: Colors.white),
       child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        
             Image.asset("assets/icons/hold-touch.png", height: height/15,width: width,),
          SizedBox(height:8.0),
          Text("One Time",style: TextStyle(color:Colors.orangeAccent,fontSize: 20.0,fontWeight: FontWeight.w700),),
        ],
      )
  
    ),
  
  )
  
      ],)
  
    ],
  
  ),
)
    

    ],
  )

],
       )
      //  bottomNavigationBar: BottomNavigationBar(items: null),
    );
  }
}