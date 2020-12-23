//about_roberto.dart
import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(second());
}

class second extends StatelessWidget {
  static const String _title = "메인화면";
  static const String _first_title = "자기소개";
  static const String _second_title = "작품설명";
  static const String _back = "메인";


  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    '커뮤니케이션 과 실력을 고루 갖춘 개발자가 되자! ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Roberto, South Korea',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.thumb_up,
            color: Colors.yellow[900],
          ),
          Text('22'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.check, 'STORE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
          _buildButtonColumn(color, Icons.search, 'ABOUT'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
            ' Q  : 직무수행을 통하여 문제해결능력을 발휘한 경험이 있으면 서술해 주세요.?'
            '                                                                  '

            ' A  : 지난 3월 졸업작품 제작 관련해 저희는 데스크톱을 기반으로 한 컨트롤러(라즈베리)를 만들고 있었습니다. 그런데 각각의 센서들의 데이터 처리에 문제가 있었습니다. 컨트롤러 특성상 빠른 데이터 처리를 요구하였는데 저희는 라이브러리의 사용을 위해 파이썬을 사용했습니다. 처음에 파이썬이 인터프리터 언어이고 하드웨어 단에서 느리다는 점은 인지하였지만스레드를 사용하면 데이터처리 속도가 빠를 것이라고 생각했습니다. 하지만 파이썬은 다중 스레드 생성 시 속도가 느려진다는 점을 간과하였고 위기 상황에 직면했습니다. 저는 스레드 방식이 안된다면 프로세스를 나눠보자는 멀티 프로세스 방식을 새로운 아이디어를 빠르게 내었습니다. 컨트롤러의 데이터 처리 속도는 빨라졌습니다. 기존의 스레드 방식을 연구해볼 수도 있었지만 파이썬에서의 다중 스레드 문제점을 인지하고 다른 방식을 빠르게 생각해냈습니다..',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepPurple[300],
          title: Text('::roberto 가치관::',
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ],

            ),
          ),
        ),
        body: ListView(
          children: [
            RaisedButton(
              child: Text(_back),
                onPressed: (){
                  Navigator.pop(context);
                }),
            Image.asset(
              'assets/roberttto.JPG',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}