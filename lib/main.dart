import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main()
{

  runApp(piano());
}

class piano extends StatelessWidget {
  const piano({Key? key}) : super(key: key);

  Widget buildButton(Color c,int count)
  {
    return Expanded(
      child: FlatButton(
        color: c,
        height: 100.0,
        onPressed: (){
          final player= AudioCache();
          player.play("note$count.mp3");
        }, child: Text(""),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Make A Music"),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(Colors.purple, 1),
              buildButton(Colors.lightGreenAccent,2),
              buildButton(Colors.blue,3),
              buildButton(Colors.green, 4),
              buildButton(Colors.yellow, 5),
              buildButton(Colors.orange, 6),
              buildButton(Colors.red, 7),

            ],
          ),
        ),
      ),
    );
  }
}
