import 'package:flutter/material.dart';
import 'nouvelle_page.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => new _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
          color: Colors.teal,
          textColor: Colors.white,
          child: new Text("Appuyer moi",
              style: new TextStyle(fontStyle: FontStyle.italic, fontSize: 20)),
          onPressed: versNouvellePage
          // (() => dialog("Bienvenue à Lille", "Admirez le vieux_Lille, la promenade de mon cul et ta mère."))
          ),
    );
  }

  void snack() {
    SnackBar snackBar = new SnackBar(
        content: new Text(
          'je suis une snackbar',
          textScaleFactor: 1.5,
        ),
        duration: new Duration(seconds: 5));

    Scaffold.of(context).showSnackBar(snackBar);
  }

  Future<Null> alerte() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text(
              'Ceci est une alerte',
              textScaleFactor: 1.5,
            ),
            content: new Text('Houston nous avons une problème'),
            contentPadding: EdgeInsets.all(5),
            actions: <Widget>[
              new FlatButton(
                onPressed: () {
                  print('Abort');
                  Navigator.pop(context);
                },
                child: new Text("Annuler",
                    style: new TextStyle(color: Colors.red)),
              ),
              new FlatButton(
                onPressed: () {
                  print('Proceed');
                  Navigator.pop(context);
                },
                child: new Text("Continuer",
                    style: new TextStyle(color: Colors.blue)),
              ),
            ],
          );
        });
  }

  Future<Null> dialog(String title, String desc) async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return new SimpleDialog(
            title: new Text(title, textScaleFactor: 1.5),
            contentPadding: EdgeInsets.all(10),
            children: <Widget>[
              new Text(desc),
              new Container(height: 20),
              new RaisedButton(
                color: Colors.teal,
                textColor: Colors.white,
                child: new Text('OK'),
                onPressed: () {
                  print("appuyé");
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  void versNouvellePage() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new NouvellePage("La seconde Page de Allexxx");
    }));
  }
}
