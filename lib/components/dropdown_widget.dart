// ignore_for_file: constant_identifier_names

import 'dart:developer';

import 'package:flutter/material.dart';

enum Country {
  USA,
  Canada,
  Mexico,
  Brazil,
  UnitedKingdom,
  Germany,
  France,
  Japan,
  Australia,
  China,
  Argentina,
  Chile,
  Colombia,
  Peru,
  Venezuela,
  Italy,
  Spain,
  Portugal,
  Russia,
  Turkey,
  Egypt,
  SouthAfrica,
  Nigeria,
  Kenya,
  India,
  Pakistan,
  Bangladesh,
  Indonesia,
  Malaysia,
  Philippines
}

class MyDropdownTextFieldWidget extends StatefulWidget {
  const MyDropdownTextFieldWidget({super.key});

  @override
  _MyDropdownTextFieldWidgetState createState() =>
      _MyDropdownTextFieldWidgetState();
}

class _MyDropdownTextFieldWidgetState extends State<MyDropdownTextFieldWidget> {
  Country? _selectedCountry;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Country>(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
      ),
      value: Country.values.first, //change to initial user country
      items: Country.values
          .map((country) => DropdownMenuItem<Country>(
                value: country,
                child: Text(country.name.toString()),
              ))
          .toList(),
      onChanged: (newValue) {
        setState(() {
          _selectedCountry = newValue;
          log(_selectedCountry.toString());
        });
      },
    );
  }
}
