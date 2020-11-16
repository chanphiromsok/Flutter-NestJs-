import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:test1/radio_button.dart';
import 'my_data.dart';
import 'radio_button.dart';

class DetailApp extends StatefulWidget {
  @override
  _DetailAppState createState() => _DetailAppState();
}

class _DetailAppState extends State<DetailApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 180,
            width: double.maxFinite,
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'Input Inforamtion',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8))),
                    margin: EdgeInsets.all(20),
                    height: 1000,
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Information',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            controller: firstname,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                labelText: 'Firstname',
                                prefixIcon: Icon(Icons.people)),
                            maxLength: 15,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            controller: lastname,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                labelText: 'Lastname',
                                prefixIcon: Icon(Icons.people)),
                            maxLength: 20,
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey.withOpacity(0.2)),
                            height: 50,
                            width: double.maxFinite,
                            child: RadioGender()),
                        CountryPickerDropdown(
                          initialValue: 'KH',
                          onValuePicked: (Country country) {
                            setState(() {
                              myCountry = country.name;
                              print(myCountry);
                            });
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(result),
                        )
                      ]),
                    ))),
              )
            ],
          )
        ],
      ),
    );
  }
}
