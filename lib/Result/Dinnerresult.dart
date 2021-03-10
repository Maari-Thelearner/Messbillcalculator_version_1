import 'package:flutter/material.dart';
import 'package:backiam_mess/tabs/dinner.dart';
List<int> _mylist = new List();
List<String> _list = new List();
class Resultlist{
  Lister(int value){
    _mylist.add(value);
  }
  Remove()
  {
    _mylist.clear();
    _list.clear();
  }
  RemoveIndex(int value)
  {
    _mylist.removeAt(value);
    _list.removeAt(value);
  }
  Sum()
  {
    int sum=0;
    for(int i=0;i<_mylist.length;i++)
    {
      sum=sum+_mylist[i];
    }
    return sum;
  }
  Count(String value)
  {
    _list.add(value);
  }
}
String indexof=_list.first;
class Resultbf extends StatefulWidget {
  @override
  _ResultbfState createState() => _ResultbfState();
}

class _ResultbfState extends State<Resultbf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*0.70,
          width: MediaQuery.of(context).size.width*0.90,
          color: Colors.amber,
          child: ListView(
            children: [
              Text(
                'BACKIAM MESS\nKovilpatti -628502',textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.blue[900]),),
              ListTile(
                title: Center(child: Text('Breakfirst Total Amount Bill',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),)),
              ),
              ListTile(
                title: Text('Total No.of Items Ate :',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                subtitle: Text('No of Items you Ate ie., Idly,Dosa,vada',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 16.0),),
                trailing: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                    child: Text(_mylist.length.toString(),style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),)),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListTile(
                title: Text('What are the Items Ate:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                subtitle:_list.length>1 ? Text(_list.toString(),style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)) :
                _list.length==1 ?
                Text('$indexof '
                    'only',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),) :
                Text('No items Ate',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold))
                ,
              ),
              SizedBox(height: 40.0,),
              Divider(height: 2.0,color: Colors.black,thickness: 2.0,),
              ListTile(
                title: Container(margin: EdgeInsets.fromLTRB(0, 30.0, 0, 20.0),child: Text('Bill Amount'
                  , style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),
                )),
                trailing: Container(
                    margin: EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                    child: Text(Resultlist().Sum().toString(),style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),)),
              ),
              Divider(height: 2.0,color: Colors.black,thickness: 2.0,),
              ListTile(title: Center(child: Text('Thank you , Have a Nice Day....')),)
            ],
          ),
        ),
      ),
    );
  }
}
