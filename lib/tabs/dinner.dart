import 'package:backiam_mess/Customtheme.dart';
import 'package:backiam_mess/Home.dart';
import 'package:backiam_mess/Result/Dinnerresult.dart';
import 'package:flutter/material.dart';
import 'package:backiam_mess/models/dinnermodel.dart';
import 'package:backiam_mess/models/Data.dart';
import 'package:flutter/services.dart';
class Dinner extends StatefulWidget {
  @override
  _DinnerState createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
  TextEditingController num1Controller = new TextEditingController();
  TextEditingController num2Controller = new TextEditingController();
  TextEditingController num3Controller = new TextEditingController();
  TextEditingController num4Controller = new TextEditingController();
  TextEditingController num5Controller = new TextEditingController();
  TextEditingController num6Controller = new TextEditingController();
  TextEditingController num7Controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width:  MediaQuery.of(context).size.width*0.01,color: CustomTheme.of(context).primaryColor),
                ),
              ),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.60,
              child: new ListView.builder(
                itemCount: DinnerData.length,
                itemBuilder: (context, i) =>
                new Column(
                  children: [
                    new Divider(height:  MediaQuery.of(context).size.height*0.025,),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(DinnerData[i].pic),
                      ),
                      title: Row(
                        children: [
                          Text(DinnerData[i].name, style: TextStyle(
                              fontWeight: FontWeight.bold),),
                          SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                          Text('Rate:'),
                          Text('\u{20B9}${DinnerData[i].rate.toString()}',
                            style: TextStyle(fontSize: 20.0),),
                        ],
                      ),
                      subtitle: Text('Rate is per 1'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, MediaQuery.of(context).size.height*0.15),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.40,
              child: ListView(
                children: [
                  new Divider(height:  MediaQuery.of(context).size.height*0.025,),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Idly  \u{20B9}7',
                        suffixIcon: GestureDetector(
                            onTap: (){
                              Resultlist().RemoveIndex(0);
                              num1Controller.clear();
                            },
                            child: Icon(Icons.remove_circle)),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: num1Controller,
                      onChanged: (value) {
                        setState(() {
                          int val = int.parse(num1Controller.text);
                          if( val > 0)
                          {
                            int mul = val * Rate2().rate2(0);
                            Resultlist().Lister(mul);
                            Resultlist().Count('Idly');
                          }
                        });
                      },
                    ),
                  ),
                  Divider(height:  MediaQuery.of(context).size.height*0.056,),
                  ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Chapathi \u{20B9}20',
                          suffixIcon: GestureDetector(
                              onTap: (){
                                Resultlist().RemoveIndex(1);
                                num2Controller.clear();
                              },
                              child: Icon(Icons.remove_circle)),
                        ),
                        keyboardType: TextInputType.number,
                        controller: num2Controller,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        onChanged: (num2) {
                          setState(() {
                            int number = int.parse(num2Controller.text);
                            int muli = number * Rate2().rate2(1);
                            Resultlist().Lister(muli);
                            Resultlist().Count('Chapathi');
                          });
                        },
                      )),
                  Divider(height:  MediaQuery.of(context).size.height*0.056,),
                  ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Dosa \u{20B9}15',
                          suffixIcon: GestureDetector(
                              onTap: (){
                                Resultlist().RemoveIndex(2);
                                num3Controller.clear();
                              },
                              child: Icon(Icons.remove_circle)),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        controller: num3Controller,
                        onChanged: (num3) {
                          setState(() {
                            int number = int.parse(num3Controller.text);
                            int muli3 = number * Rate2().rate2(2);
                            Resultlist().Lister(muli3);
                            Resultlist().Count('Dosa');
                          });
                        },
                      )),
                  Divider(height:  MediaQuery.of(context).size.height*0.056,),
                  ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'S-Dosa \u{20B9}30',
                          suffixIcon: GestureDetector(
                              onTap: (){
                                Resultlist().RemoveIndex(3);
                                num4Controller.clear();
                              },
                              child: Icon(Icons.remove_circle)),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        controller: num4Controller,
                        onChanged: (num4) {
                          setState(() {
                            int number = int.parse(num4Controller.text);
                            int muli4 = number * Rate2().rate2(3);
                            Resultlist().Lister(muli4);
                            Resultlist().Count('S-Dosa');
                          });
                        },
                      )),
                  Divider(height:  MediaQuery.of(context).size.height*0.056,),
                  ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Onion-D \u{20B9}30',
                          suffixIcon: GestureDetector(
                              onTap: (){
                                Resultlist().RemoveIndex(4);
                                num5Controller.clear();
                              },
                              child: Icon(Icons.remove_circle)),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        controller: num5Controller,
                        onChanged: (num5) {
                          setState(() {
                            int number = int.parse(num5Controller.text);
                            int muli5 = number * Rate2().rate2(4);
                            Resultlist().Lister(muli5);
                            Resultlist().Count('Onion-D');
                          });
                        },
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 45.0,
            width: 45.0,
            child: FloatingActionButton(
              backgroundColor: CustomTheme.of(context).primaryColor,
              elevation: 0,
              onPressed: () {
                Resultlist().Remove();
                num1Controller.clear();
                num2Controller.clear();
                num3Controller.clear();
                num4Controller.clear();
                num5Controller.clear();
                num6Controller.clear();
                num7Controller.clear();
              }, child: Text('C',style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),),
          ),
          SizedBox(width: 20.0,),
          SizedBox(
            height: 70.0,
            width: 70.0,
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Resultbf();
                  }));
                },
                child: CircleAvatar(
                    backgroundColor: CustomTheme.of(context).primaryColor,
                    child: Icon(Icons.request_page,color: Colors.white,))),
          ),
        ],
      ),
    );
  }
}