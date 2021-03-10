import 'dart:ui';
import 'package:flutter/material.dart';
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('About us'),
        ),
        body: Center(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 30.0, 0, 20.0),
                height: 500.0,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 80.0,
                    ),
                    ListTile(
                      leading: Text('Name :',style: TextStyle(color: Colors.white),),
                      title: Text('Marimuthu',style: TextStyle(color: Colors.white),),
                      subtitle: Text('Developer of this App',style: TextStyle(color: Colors.white),),
                    ),
                    ListTile(
                      leading: Text('App\ndeveloped\nlanguage :',style: TextStyle(color: Colors.white),),
                      title: Text('Flutter',style: TextStyle(color: Colors.white),),
                      subtitle: Text('Mobile Application building dart language',style: TextStyle(color: Colors.white),),
                    ),
                    ListTile(
                      leading: Text('App version:',style: TextStyle(color: Colors.white),),
                      title: Text('Mess_Bill v1.0',style: TextStyle(color: Colors.white),),
                    ),
                    ListTile(
                      leading: Text('Contact Us :',style: TextStyle(color: Colors.white),),
                      title: Text('bs.mari100@gmail.com',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 2,
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Colors.greenAccent,
                      backgroundImage: NetworkImage('https://cdn2.iconfinder.com/data/icons/mobile-web-app-vol-4-1/32/Bill_Note_pay_cash_payment_billing_payment-512.png',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ),
      );
  }
}
