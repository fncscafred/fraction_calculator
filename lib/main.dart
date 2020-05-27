import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController _num1 = new TextEditingController();
  TextEditingController _num11 = new TextEditingController();
  TextEditingController _num2 = new TextEditingController();
  TextEditingController _num22 = new TextEditingController();
  double total = 0;


  Widget build(BuildContext context) {
    Widget row1 = new Container(
      child: Row(
        children: <Widget>[
          Expanded(child:Padding(
            padding: EdgeInsets.fromLTRB(40, 80, 60, 0),
            child: TextField(
            controller: _num1,
            keyboardType: TextInputType.numberWithOptions(),
            style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            ),
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5.0),
                 ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
           ),
          ),
          Expanded(child:Padding(
            padding: EdgeInsets.fromLTRB(60, 80, 40, 0),
            child: TextField(
            controller: _num11,
            keyboardType: TextInputType.numberWithOptions(),
            style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            ),
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5.0),
                 ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
           ),
          )
        ],
      ),
    );

    Widget row2 = new Container(
      child: Row(
        children: <Widget>[
          Expanded(child:Padding(
            padding: EdgeInsets.fromLTRB(40, 10, 60, 10),
            child: TextField(
            controller: _num2,
            keyboardType: TextInputType.numberWithOptions(),
            style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            ),
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5.0),
                 ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
           ),
          ),
          Expanded(child:Padding(
            padding: EdgeInsets.fromLTRB(60, 10, 40, 10),
            child: TextField(
            controller: _num22,
            keyboardType: TextInputType.numberWithOptions(),
            style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            ),
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5.0),
                 ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
           ),
          )
        ],
      ),
    );

    Widget row3 = new Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
      Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: new MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)
              )
            ),
            elevation: 5.0,
            minWidth: 40.0,
            height: 40,
            color: Colors.blue,
            child: new Text('+',
              style: new TextStyle(fontSize: 40.0, color: Colors.white)
            ),
            onPressed: _plus,
          ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: new MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)
              )
            ),
            elevation: 5.0,
            minWidth: 40.0,
            height: 40,
            color: Colors.blue,
            child: new Text('-',
              style: new TextStyle(fontSize: 40.0, color: Colors.white)
            ),
            onPressed: _minus,
          ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: new MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)
              )
            ),
            elevation: 5.0,
            minWidth: 40.0,
            height: 40,
            color: Colors.blue,
            child: new Text('/',
              style: new TextStyle(fontSize: 40.0, color: Colors.white)
            ),
            onPressed: _divide,
          ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: new MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)
              )
            ),
            elevation: 5.0,
            minWidth: 40.0,
            height: 40,
            color: Colors.blue,
            child: new Text('X',
              style: new TextStyle(fontSize: 40.0, color: Colors.white)
            ),
            onPressed: _times,
          ),
      ),
      ],
      ),
    );
  
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Fraction Calculator',
          style: new TextStyle(
            fontSize: 30.0,
          ),
          ),
        ),
        body: Column(
          children: <Widget>[
            row1,
            row2,
            row3,
            Text("Result : $total",
              style: new TextStyle(
                fontSize: 30.0,
              ),
            ),

            Padding(padding: EdgeInsets.all(30),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: _resetOperation,
              child: Text('RESET', style: TextStyle(fontSize: 30.0),),
              color: Colors.green,
            ),
          ),
          ],
        ),
      ),
    );
  }

void _plus(){
  setState(() {
    double a = double.parse(_num1.text);
    double b = double.parse(_num11.text);
    double c = double.parse(_num2.text);
    double d = double.parse(_num22.text);
    total = ((a*d) + (b*c)) / (b*d);
  }
  );
}

void _minus(){
  setState(() {
    double a = double.parse(_num1.text);
    double b = double.parse(_num11.text);
    double c = double.parse(_num2.text);
    double d = double.parse(_num22.text);
    total = ((a*d) - (b*c)) / (b*d);
  });
}

void _divide(){
  setState(() {
    double a = double.parse(_num1.text);
    double b = double.parse(_num11.text);
    double c = double.parse(_num2.text);
    double d = double.parse(_num22.text);
    total = (a*c) / (b*d);
  });
}

void _times(){
  setState(() {
    double a = double.parse(_num1.text);
    double b = double.parse(_num11.text);
    double c = double.parse(_num2.text);
    double d = double.parse(_num22.text);
    total = (a*d) / (b*c);
  });
}

void _resetOperation(){
  setState(() {
    _num1.clear();
    _num11.clear();
    _num2.clear();
    _num22.clear();
    total = 0.0;
  });
}
}


