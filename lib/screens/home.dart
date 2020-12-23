import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ex01_appbar/database/db.dart';
import 'package:flutter_ex01_appbar/database/memo.dart';
import 'edit.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Q&A',
        style: TextStyle(
            shadows: <Shadow>[
        Shadow(
        offset: Offset(4.0, 4.0),
          blurRadius: 3.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        ],
        ),
        ),

      ),
      body: Column(

        children: <Widget>[

          Padding(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Text('Q&A 버튼을 눌러주세요:)',
                  style: TextStyle(fontSize: 20, color: Colors.black45))),
          Expanded(child: memoBuilder())

        ],

      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => EditPage()));
        },

        tooltip: 'Q&A 추가하려면 클릭하세요',
        label: Text('Q&A'),
        icon: Icon(Icons.question_answer),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  //리스트 몇개인지 는 LoadMemo 함수에서 결정
  List<Widget> LoadMemo() {
    List<Widget> memoList = [];
    memoList.add(Container(
      color: Colors.purple,
      height: 100,
    ));
    memoList.add(Container(
      color: Colors.redAccent,
      height: 100,
    ));
    return memoList;
  }

  Future<List<Memo>> loadMemo() async {
    DBHelper sd = DBHelper();
    return await sd.memos();
  }

  Widget memoBuilder() {
    return FutureBuilder(
      builder: (context, projectSnap) {
        if (projectSnap.data.isEmpty) {
          //print('project snapshot data is: ${projectSnap.data}');
          return Container(
            alignment: Alignment.center,
            child: Text(
              "Q&A 버튼을 눌러 등록해주세요 :)\n\n\n\n\n\n\n\n\n\n",
              style: TextStyle(fontSize: 15, color: Colors.black45),
              textAlign: TextAlign.center,
            ),
          );
        }
        return ListView.builder(
          itemCount: projectSnap.data.length,
          itemBuilder: (context, index) {
            Memo memo = projectSnap.data[index];
            return Container(
              child: Column(
                children: <Widget>[
                  Text("제목:"+ memo.title),
                  Text("내용:"+ memo.text),
                  Text("작성시간:"+ memo.editTime),

                  // Widget to display the list of project
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.deepPurpleAccent,
                  width: 3,
                ),

                borderRadius: BorderRadius.circular(12),
              ),
            );
          },
        );
      },
      future: loadMemo(),
    );
  }
}
