import 'package:backiam_mess/Customtheme.dart';
import 'package:backiam_mess/Mytheme.dart';
import 'package:backiam_mess/aboutus.dart';
import 'package:backiam_mess/tabs/breakfirst.dart';
import 'package:backiam_mess/tabs/dinner.dart';
import 'package:backiam_mess/tabs/lunch.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
TabController _tabController;
@override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this , initialIndex: 0)..addListener(() {
      setState(() {
      });
    });
  }

  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(65.0,0,0,0),
          child: Text("BACKIAM MESS"),
        ),
        bottom: new TabBar(
          indicatorSize: TabBarIndicatorSize.label ,
          indicatorColor: Theme.of(context).primaryColor,
            controller: _tabController,
            tabs: [
              Text('BFirst',style: TextStyle(fontSize: 25.0),),
              Text('Lunch',style: TextStyle(fontSize: 25.0),),
              Text('Dinner',style: TextStyle(fontSize: 25.0),),
        ]),
      ),
      drawer: Drawer(
    child: ListView(
    children: [
    Divider(height: 0.1,color: Colors.green,),
    UserAccountsDrawerHeader(
    accountName: Text('Marimuthu'), accountEmail: Text('bs.mari100@gmail.com') ),
    ListTile(
      title: Text('Themes:'),
      subtitle: RaisedButton(
        onPressed: () {
          _changeTheme(context, MyThemeKeys.LIGHT);
        },
        child: Text("Light"),
      ),
    ),
      ListTile(
        subtitle: RaisedButton(
          onPressed: () {
            _changeTheme(context, MyThemeKeys.DARK);
          },
          child: Text("Dark"),
        ),
      ),
      ListTile(
        subtitle: RaisedButton(
          onPressed: () {
            _changeTheme(context, MyThemeKeys.DARKER);
          },
          child: Text("Darker"),
        ),
      ),
      ListTile(
        title: Text('More:'),
        subtitle: RaisedButton(
          child: Text('AboutUS'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Settings();
            }));
          },
        ),
      ),
    ],
    ),
    ),
      body: new TabBarView(
          controller: _tabController,
          children: [
        new Breakfirst(),
            new Lunch(),
            new Dinner(),
      ]),

    );
  }
}