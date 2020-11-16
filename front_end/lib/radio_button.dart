import 'package:flutter/material.dart';
import 'my_data.dart';

class RadioGender extends StatefulWidget {
  @override
  _RadioGenderState createState() => _RadioGenderState();
}

class _RadioGenderState extends State<RadioGender> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 150,
            child: RadioListTile(
                title: Text(
                  'Male',
                  style: TextStyle(color: Colors.black),
                ),
                value: groupGender.male,
                groupValue: gender,
                onChanged: (groupGender value) {
                  setState(() {
                    gender = value;
                    myGender = 'Male';
                  });
                }),
          ),
          Container(
            width: 150,
            child: RadioListTile(
              title: Text(
                'Female',
                style: TextStyle(color: Colors.black),
              ),
              value: groupGender.female,
              groupValue: gender,
              onChanged: (groupGender value) {
                setState(() {
                  gender = value;
                  myGender = 'Female';
                  print(gender);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
