import 'package:backiam_mess/Customtheme.dart';
import 'package:backiam_mess/Home.dart';
import 'package:backiam_mess/Result/lunchresult.dart';
import 'package:flutter/material.dart';
import 'package:backiam_mess/models/lunchmodel.dart';
import 'package:backiam_mess/models/Data.dart';
import 'package:flutter/services.dart';
class Lunch extends StatefulWidget {
  @override
  _LunchState createState() => _LunchState();
}

class _LunchState extends State<Lunch> {
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
                itemCount: Lunchdata.length,
                itemBuilder: (context, i) =>
                new Column(
                  children: [
                    new Divider(height:  MediaQuery.of(context).size.height*0.025,),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(Lunchdata[i].pic),
                      ),
                      title: Row(
                        children: [
                          Text(Lunchdata[i].name, style: TextStyle(
                              fontWeight: FontWeight.bold),),
                          SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                          Text('Rate:'),
                          Text('\u{20B9}${Lunchdata[i].rate.toString()}',
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
                  new Divider(height: MediaQuery.of(context).size.height*0.025,),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Meals  \u{20B9}60',
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
                            int mul = val * Rate1().rate1(0);
                            Resultlist().Lister(mul);
                            Resultlist().Count('Meals');
                          }
                        });
                      },
                    ),
                  ),
                  Divider(height: MediaQuery.of(context).size.height*0.056,),
                  ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Parcel \u{20B9}70',
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
                        onSubmitted: (num2) {
                          setState(() {
                            int number = int.parse(num2);
                            int muli = number * Rate1().rate1(1);
                            Resultlist().Lister(muli);
                            Resultlist().Count('Parcel');
                          });
                        },
                      )),
                  Divider(height: MediaQuery.of(context).size.height*0.056,),
                  ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'H-Meals \u{20B9}40',
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
                        onSubmitted: (num3) {
                          setState(() {
                            int number = int.parse(num3);
                            int muli3 = number * Rate1().rate1(2);
                            Resultlist().Lister(muli3);
                            Resultlist().Count('H-meals');
                          });
                        },
                      )),
                  Divider(height: MediaQuery.of(context).size.height*0.056,),
                  ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Sambar-S \u{20B9}40',
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
                        onSubmitted: (num4) {
                          setState(() {
                            int number = int.parse(num4);
                            int muli4 = number * Rate1().rate1(3);
                            Resultlist().Lister(muli4);
                            Resultlist().Count('Sambar-S');
                          });
                        },
                      )),
                  Divider(height: MediaQuery.of(context).size.height*0.056,),
                  ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Thayir-S \u{20B9}40',
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
                        onSubmitted: (num5) {
                          setState(() {
                            int number = int.parse(num5);
                            int muli5 = number * Rate1().rate1(4);
                            Resultlist().Lister(muli5);
                            Resultlist().Count('Thayir_S');
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