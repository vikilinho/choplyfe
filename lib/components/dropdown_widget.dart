// ignore_for_file: constant_identifier_names

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
      decoration: const InputDecoration(
        labelText: 'Country',
        border: OutlineInputBorder(),
      ),
      value: _selectedCountry,
      items: Country.values
          .map((country) => DropdownMenuItem<Country>(
                value: country,
                child: Text(country.toString()),
              ))
          .toList(),
      onChanged: (newValue) {
        setState(() {
          _selectedCountry = newValue;
        });
      },
    );
  }
}
