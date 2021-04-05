

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rosary extends StatefulWidget{
  

   Rosary({Key key, this.title}) : super(key: key);

   final String title;

  @override
  _Counterstate createState() => _Counterstate();
}
  

  class _Counterstate extends State<Rosary>{
 int _counter=0;

 void _incrementCount() {
    setState(() {
      _counter++;
// _counter ==100 ? color:Colors.red[300] : color:Colors.white;
      
    });
   
  }

  void _decrementCount() {
    setState(() { 
 
        _counter ==0 ? _counter =0  :_counter--;
   } );
  }

  void _resetCount() {
    setState(() => _counter = 0);
  }
  
  
 
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.lightGreen,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
           padding: EdgeInsets.only(bottom:200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

 Padding(
 padding: EdgeInsets.only(bottom:87),
   child: Text("Let's praise God.."   , style:TextStyle(fontSize: 30 ,color: Colors.white),
   
   ),
 ),
                 
               
              
              Padding(
                padding: const EdgeInsets.only( bottom:8.0),
                child: Text("Times"   , style:TextStyle(fontSize: 20 ,color: Colors.grey[700]),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$_counter',
                  style:TextStyle(fontSize: 60 , color: _counter >100 ?Colors.red[900] : Colors.white,),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: FloatingActionButton(
                          child: Center(
                            child: Text(
                              "-",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                          ),
                          onPressed: _decrementCount,
                          backgroundColor: Colors.red[300],
                        )),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: FloatingActionButton(
                        
                          child: Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 43,
                              ),
                            ),
                          ),
                          onPressed: _incrementCount,
                          backgroundColor: Colors.lightGreen),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right:128.0 ,bottom: 50),
        child: FloatingActionButton(
          
          onPressed: _resetCount,
          tooltip: 'increment',
          backgroundColor: Colors.grey[700],
          child: Icon(Icons.refresh) ,
        ),
      ),
    );
  
  }
 }

  

  

////////////////////////

 

  
  
