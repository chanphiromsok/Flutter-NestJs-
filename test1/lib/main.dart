import 'dart:convert';
import 'package:flutter/material.dart';
import 'detail_app.dart';
import 'my_data.dart';
import 'user_model.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: SafeArea(child: DetailApp()),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: RaisedButton(
              onPressed: () async {
                User user = new User(
                    id: null,
                    firstname: firstname.text.trim(),
                    lastname: lastname.text.trim(),
                    country: myCountry,
                    gender: myGender);

                var body = json.encode(user.toJson());
                // print(body);
                user = await inserUser(body);
                print(user);
                setState(() {
                  if (user != null) {
                    result = user.firstname.toString() +
                        '\n' +
                        user.lastname.toString() +
                        '\n' +
                        user.gender +
                        '\n' +
                        user.country;
                  } else {
                    result = 'Cannot Create';
                  }
                });
              },
              color: Colors.blueAccent,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ));
  }

  Future<User> inserUser(String body) async {
    final api = 'http://192.168.1.103:3000/users';
    var res = await http
        .post(api, body: body, headers: {'Content-Type': 'application/json'});
    print(res.statusCode);
    if (res.statusCode == 201) {
      return User.fromJson(json.decode(res.body));
    } else {
      return null;
    }
  }
}
