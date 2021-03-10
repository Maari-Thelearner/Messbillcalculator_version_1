import 'package:backiam_mess/Customtheme.dart';
import 'package:backiam_mess/Result/breakfirstresult.dart';
import 'package:flutter/material.dart';
import 'package:backiam_mess/models/breakfirstmodel.dart';
import 'package:backiam_mess/models/Data.dart';
import 'package:flutter/services.dart';
class Breakfirst extends StatefulWidget {
  @override
  _BreakfirstState createState() => _BreakfirstState();
}

class _BreakfirstState extends State<Breakfirst> {
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
                right: BorderSide(width: MediaQuery.of(context).size.width*0.01,color: CustomTheme.of(context).primaryColor),
                ),
              ),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.60,
              child: new ListView.builder(
                itemCount: BreakfirstData.length,
                itemBuilder: (context, i) =>
                new Column(
                  children: [
                    new Divider(height: MediaQuery.of(context).size.height*0.025,),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(BreakfirstData[i].pic),
                      ),
                      title: Row(
                        children: [
                          Text(BreakfirstData[i].name, style: TextStyle(
                              fontWeight: FontWeight.bold),),
                          SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                          Text('Rate:'),
                          Text('\u{20B9}${BreakfirstData[i].rate.toString()}',
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
                  new Divider(height: 25.0,),
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
                              int mul = val * Rate().rate(0);
                              Resultlist().Lister(mul);
                              Resultlist().Count('Idly');
                            }
                        });
                      },
                    ),
                  ),
                  Divider(height: 56.0,),
                  ListTile(
                      title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Dosa \u{20B9}15',
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
                        int muli = number * Rate().rate(1);
                        Resultlist().Lister(muli);
                        Resultlist().Count('Dosa');
                      });
                    },
                  )),
                  Divider(height: 56.0,),
                  ListTile(
                      title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Vada \u{20B9}7',
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
                        int muli3 = number * Rate().rate(2);
                        Resultlist().Lister(muli3);
                        Resultlist().Count('Vada');
                      });
                    },
                  )),
                  Divider(height: 56.0,),
                  ListTile(
                      title: TextField(
                    decoration: InputDecoration(
                      hintText: '1 Puri \u{20B9}7',
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
                        int muli4 = number * Rate().rate(3);
                        Resultlist().Lister(muli4);
                        Resultlist().Count('Puri');
                      });
                    },
                  )),
                  Divider(height: 56.0,),
                  ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Puriset \u{20B9}25',
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
                            int muli5 = number * Rate().rate(4);
                            Resultlist().Lister(muli5);
                            Resultlist().Count('Puriset');
                          });
                        },
                      )),
                  Divider(height: 56.0,),
                  ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Pongal \u{20B9}25',
                          suffixIcon: GestureDetector(
                              onTap: (){
                                Resultlist().RemoveIndex(5);
                                num6Controller.clear();
                              },
                              child: Icon(Icons.remove_circle)),
                        ),
                        keyboardType: TextInputType.number,
                        controller: num6Controller,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        onChanged: (num6) {
                          setState(() {
                            int number = int.parse(num6Controller.text);
                            int muli6 = number * Rate().rate(5);
                            Resultlist().Lister(muli6);
                            Resultlist().Count('Pongal');
                          });
                        },
                      )),
                  Divider(height: 56.0,),
                  ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'S-Dosa \u{20B9}30',
                          suffixIcon: GestureDetector(
                              onTap: (){
                                Resultlist().RemoveIndex(6);
                                num7Controller.clear();
                              },
                              child: Icon(Icons.remove_circle)),
                        ),
                        keyboardType: TextInputType.number,
                        controller: num7Controller,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        onChanged: (num7) {
                          setState(() {
                            int number = int.parse(num7Controller.text);
                            int muli7 = number * Rate().rate(6);
                            Resultlist().Lister(muli7);
                            Resultlist().Count('S-Dosa');
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