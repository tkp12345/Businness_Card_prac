//about_roberto.dart
import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(first());

}

class first extends StatefulWidget{
  @override
  _MyApp2State createState()  => _MyApp2State();
}

class _MyApp2State extends State<first> {
  bool _isthumb = true; //버튼클릭 확인 변수
  bool _isdownthumb = true;
  int _count = 22;
  int _count2 = 2;

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
                    '편의보다는 공익을 위한 개발자를 꿈꾸며... ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
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

          IconButton(
            onPressed: pressThumb,
            icon: (_isthumb ? Icon(Icons.thumb_up) : Icon(
                Icons.thumb_up_alt_outlined)),
            color: Colors.redAccent[200],
            iconSize: 24,
          ),

          Text('$_count'),

          SizedBox(
            width: 7.0,
          ),
          IconButton(
            onPressed: pressDownThumb,
            icon: (_isdownthumb ? Icon(Icons.thumb_down) : Icon(
                Icons.thumb_down_alt_outlined)),
            color: Colors.redAccent[200],
            iconSize: 24,
          ),

          Text('$_count2'),
        ],
      ),
    );

    Color color = Theme
        .of(context)
        .primaryColor;

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
        ' Q  : 남들과 차별화 되는 자신만의 강점 세 가지와 그것을 바탕으로 회사에 기여할 부분은 무엇인가요?'
            '                                                                  '
            ' A  : 긍정적 마인드는 저에게도 큰 도움이 되지만 함께 일하는 분들에게도 긍정적 영향을 불러일으킬 것입니다 사내의 밝은 분위기에 도움이 되어 더 나은 결과를 산출하도록 팀에 도움이 되겠습니다.튼튼한 체력을 바탕으로 한 정신력으로 항상 함부로 판단하는 일이 없을 것입니다.혼자 하는 일은 없다고 생각합니다 결국 사람과 사람과의 관계가 회사 내에서도 중요하다고 생각합니다. 다양한 서비스직 종 경험으로 사람을 대하는 기본적인 마인드를 가지고 있습니다. 이에 따라 회사 내의 사람과 사람 사이의 관계가 우호적이도록 항상 유지할 것입니다.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title: Text('::roberto 그는 누구인가::',
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
                onPressed: () {
                  Navigator.pop(context);
                }),
            Image.asset(
              'assets/roberto.jpg',
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

  void pressThumb() {
    setState(() {
      if (_isthumb) {
        _isthumb = false;
        _count -= 1;
      } else {
        _isthumb = true;
        _count += 1;
      }
    });
  }

  void pressDownThumb() {
    setState(() {
      if (_isdownthumb) {
        _isdownthumb = false;
        _count2 -= 1;
      } else {
        _isdownthumb = true;
        _count2 += 1;
      }
    });
  }
}


