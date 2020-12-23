import 'package:flutter/material.dart';
import "package:crypto/crypto.dart";
import 'dart:convert'; // for the utf8.encode method
import 'package:flutter_ex01_appbar/database/memo.dart';
import 'package:flutter_ex01_appbar/database/db.dart';

class EditPage  extends StatelessWidget {
  String title='';
  String text='';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.delete),
              onPressed: (){},
          ),
          IconButton(
            icon: const Icon(Icons.save_alt),
            //아이콘 버튼 누를때 저장
            onPressed:saveDB,
          ),
        ],
      ),
        
      body:
      Padding(
        padding: EdgeInsets.all(10),
      child:Column(
        children: <Widget>[
          TextField(
            onChanged: (String title){ this.title=title;},
            style: TextStyle(fontSize:20, fontWeight: FontWeight.w200),
            keyboardType: TextInputType.multiline,
            maxLines: 3,
            //obscureText: true,
            decoration: InputDecoration(
              hintText: '질문 제목을 작성해주세요:)',
            ),
          ),
      Padding(
        padding: EdgeInsets.all(20)),
          TextField(
            onChanged: (String text){ this.text=text;},
            keyboardType: TextInputType.multiline,
            maxLines: 3,

            //obscureText: true,
            decoration: InputDecoration(
              hintText: '질문 내용을 작성해주세요:)',
            ),
          ),
        ],
      ),
          )


    );
  }

  Future<void>  saveDB() async {
  DBHelper sd = DBHelper();

  var fido = Memo(
    id: Str2Sha512(DateTime.now().toString()), //String
    title: this.title,
    text: this.text,
    createTime: DateTime.now().toString(),
    editTime: DateTime.now().toString(),
  );

  await sd.insertMemo(fido);

  print(await sd.memos());
  }
  String Str2Sha512(String text) {
    var bytes = utf8.encode(text); // data being hashed

    var digest = sha512.convert(bytes); //암호와되서 text 값이 나온다

    return digest.toString();
  }
}
