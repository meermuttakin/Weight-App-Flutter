import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new HomeState();
  }

}

class HomeState extends State<Home>{
  int radioValue = 0;

  void handleRadioValue(int value){

    setState(() {
      radioValue = value;

      print(radioValue);
    });

}

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculation"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      backgroundColor: Colors.greenAccent,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(2.5),
          children: <Widget>[
            new Image.asset('images/planet.jpg',
              height: 133.0,
              width: 200.0,),



            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: 'Your weight on Earth',
                      hintText: 'In Taka',
                      icon: new Icon(Icons.person_outline)

                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(5.0)),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      new Radio<int>(
                        activeColor: Colors.orange,
                        value: 0, groupValue: radioValue, onChanged: handleRadioValue,
                      ),

                      new Text(
                        "Pluto",
                        style: new TextStyle(color: Colors.white30),

                      ),

                      new Radio<int>(
                        activeColor: Colors.orange,
                        value: 1, groupValue: radioValue, onChanged: handleRadioValue,
                      ),
                      new Text(
                        "Pluto",
                        style: new TextStyle(color: Colors.white30),

                      ),
                      new Radio<int>(
                        activeColor: Colors.orange,
                        value: 2, groupValue: radioValue, onChanged: handleRadioValue,
                      ),

                      new Text(
                        "Pluto",
                        style: new TextStyle(color: Colors.white30),

                      ),

                      new Padding(padding: new EdgeInsets.all(15.6)),

                      new Text(
                        "Hello MEER",
                        style: new TextStyle(color:Colors.white30,
                        fontSize: 20.0,
                          fontWeight: FontWeight.w200,

                        ),


                      ),



                    ],

                  )


                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}