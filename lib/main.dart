// flutter_app_01_appbar/02drawer.bart

import 'package:flutter/material.dart';
import 'About_roberto.dart';
import 'About_roberto2.dart';
import 'About_roberto3.dart';
import 'QA.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Appbar Icon Menu",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  static const String _titl="Business card";
  static const String _name = "roberto";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: Text(_titl),
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: (){
        //     print('menu button is clicked');
        //   },
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag),
            onPressed: (){
              print('shopping_bag button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('search button is clicked');
            },
          ),

        ],

      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child : CircleAvatar(
                backgroundImage:AssetImage('assets/robertto.jpg'),
                radius: 60.0,
                backgroundColor: Colors.deepPurpleAccent,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(

              children: [
                RaisedButton(
                    child: Text('page1'),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => first()));
                    }
                ),
                SizedBox(
                  width: 7.0,
                ),

                RaisedButton(
                    child: Text('page2'),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => second()));

                    }
                ),
                SizedBox(
                  width: 7.0,
                ),

                RaisedButton(
                    child: Text('page3'),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => third()));

                    }
                ),
                SizedBox(
                  width: 7.0,
                ),
                RaisedButton(
                    child: Text('Q&A'),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QA()));

                    }
                ),
              ],
            ),
            Divider(
              height: 30.0,
              color: Colors.grey[700],
              thickness: 0.5,
              endIndent: 30.0,

            ),
            Text('이름',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,

                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(125, 0, 0, 255),
                  ),
                ],

              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(_name,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,

                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(125, 0, 0, 255),
                  ),
                ],

              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text('주소',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,

                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(125, 0, 0, 255),
                  ),
                ],

              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            Text('서울시 양천구',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,

                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(125, 0, 0, 255),
                  ),
                ],

              ),
            ),
            SizedBox(
              height:15.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width:10.0,
                ),
                Text('건담 만드는 것을 좋아해요.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    )
                ),

              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width:10.0,
                ),
                Text('커뮤니케이션을 좋아해요 .',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    )
                ),

              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline_sharp),
                SizedBox(
                  width:10.0,
                ),
                Text('농구 하는 것도 좋아해요.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    )
                ),

              ],
            ),
            SizedBox(
              height:10.0,
            ),
            Center(
              child:IconButton(
                onPressed: _launchURL,
                iconSize: 80,
                icon: new Image.asset("assets/gitLogo.png"),
              ),




            ),
          ],
        ),
      ),

      drawer:  Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/robertto.jpg'),
                backgroundColor: Colors.white,
              ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/flogi.jpg'),
                    backgroundColor: Colors.white,
                  )
                ],
                accountName: Text('박건욱'),

                accountEmail: Text('rjsdnrsla@naver.com'),

              onDetailsPressed:(){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings,
              color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: (){
                print("Setting is clicked");
              },
              trailing: Icon(Icons.add)
            ),
            ListTile(
                leading: Icon(Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('Q&A'),
                onTap: (){
                  print("Q&A is clicked");
                },
                trailing: Icon(Icons.add)
            ),ListTile(
                leading: Icon(Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('Home'),
                onTap: (){
                  print("Home is clicked");
                },
                trailing: Icon(Icons.add)
            ),
          ],

        ),
      ),
    );
  }

  void _launchURL() async {
  const url = 'https://github.com/tkp12345';
  if (await canLaunch(url)) {
  await launch(url);
  } else {
  throw 'Could not launch $url';
  }
}
}