import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
     padding: const EdgeInsets.all(8.0),
     child: Row(
       children: <Widget>[
         Expanded(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Container(
                 padding: const EdgeInsets.only(bottom: 8.0),
                 child: Text(
                   'This is a QA App',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
               Text(
                 'You can check features here.',
               style: TextStyle(
                 color: Colors.grey[500],
               ),
               )
             ],
           ),
         ),
         Icon(Icons.android, color:Colors.blue,),
       ],
     ),
    );

    Column buildButtonColumn(IconData icon,String label){
      Color color = Theme.of(context).primaryColor;
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,color: color,

          ),
          Container(
            margin: const EdgeInsets.only(top:8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color
              ),
            ),
          ),
        ],
      );
    }
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.question_answer, 'Q&A'),
          buildButtonColumn(Icons.history, 'history'),
          buildButtonColumn(Icons.info_outline, 'About us'),

        ],
      ),
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        '''
        各指导老师和参赛学生：
          首先恭喜您及您的赛队决赛第一轮中表现突出，顺利晋级第二轮的现场决赛！
          （名单详见：第七届大赛晋级决赛第二轮队名单）现将决赛相关注意事项通知如下：
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'ASK ME',
      routes: <String,WidgetBuilder>{
        '/info':(BuildContext context)=>new MyPage (title:'info page'),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('ASK ME'),
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 8.0),
          children: <Widget>[
            Image.asset('images/askme.jpg',width:600.0,height: 240.0,fit: BoxFit.cover,),
            titleSection,
            textSection,
            buttonSection,
          ],
        ),
      ),
    );
  }
}

class MyPage extends StatelessWidget{
  MyPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
    );
  }
}

class InfoPage extends StatefulWidget{
  InfoPage({Key key,this.title}):super(key:key);
  final String title;
  @override
  _InfoPageState createState()=>new _InfoPageState();
}

class _InfoPageState extends State<InfoPage>{
   void _newInfoPage(){
     setState(() {
       Navigator.of(context).push(new MaterialPageRoute<Null>(
           builder: (BuildContext context){
             return new Scaffold(
               appBar: AppBar(
               title: new Text('About us'),
               ),
               body: new Center(
                 child: 
                 new Text('''
                 钱贵十呼皆者醒丝醉朝且君且进尔。饮饮水须宰少子平主王材海宰惟呼。时空且足五听将夫愿其圣寞得裘金。
                 意留一暮贵必一人径雪悲必奔恣海。曲发使乐须寞见马明牛儿同散钟一。悲将须昔取天花名玉岑花且时恣回。
                 进取宴呼有百花高丝白且请时百恣。昔千人明万贤马丹一还必贤听见五。十复复停丝丘时暮古使且且高皆足。
                 时长为寂寞复寂何且恣之惟斗奔朝。奔黄奔发三复留乐到停换人愿须莫。
                 言沽足高谑流主圣鼓尽寂花鼓进歌。惟寂将惟与千丝上美取五耳有明者。河皆散足须出玉将奔请一皆言宴青。
                 请生皆君天贤乐醉一镜寞回河恣莫。
                 '''),

               ),
             );
           })
       );
     });
   }
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Text('''钱贵十呼皆者醒丝醉朝且君且进尔。饮饮水须宰少子平主王材海宰惟呼。时空且足五听将夫愿其圣寞得裘金。
                 意留一暮贵必一人径雪悲必奔恣海。曲发使乐须寞见马明牛儿同散钟一。悲将须昔取天花名玉岑花且时恣回。
                 进取宴呼有百花高丝白且请时百恣。昔千人明万贤马丹一还必贤听见五。十复复停丝丘时暮古使且且高皆足。
                 时长为寂寞复寂何且恣之惟斗奔朝。奔黄奔发三复留乐到停换人愿须莫。
                 言沽足高谑流主圣鼓尽寂花鼓进歌。惟寂将惟与千丝上美取五耳有明者。河皆散足须出玉将奔请一皆言宴青。
                 请生皆君天贤乐醉一镜寞回河恣莫。
        '''),
      ),
    );
  }
  }