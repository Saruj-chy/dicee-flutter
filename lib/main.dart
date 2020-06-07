import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                });

                print('You click first one!');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('You click second one!');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
          /* Expanded(
            //===   expanded is used for image is set his own size in screen
            flex:
                1, //=======     flex is used , one is how greater than another one..
            child: Image(
              color: Colors.white,
//          width: 200.0,
              image: AssetImage(
                'images/dice1.png',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Image(
              color: Colors.white,
//          width: 200.0,
              image: AssetImage(
                'images/dice1.png',
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}

/*class DicePage extends StatelessWidget {

}*/
