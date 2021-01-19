import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: new Center(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Image.asset(
              'assets/profile1.png',
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "User Name",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.purple,
              child: Text('Wallet'),
              onPressed: () {},
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.purple,
              child: Text('Location'),
              onPressed: () {},
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.purple,
              child: Text('Help'),
              onPressed: () {},
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.purple,
              child: Text('Log Out'),
              onPressed: () {},
            ),
          ],
        )));
  }
}
