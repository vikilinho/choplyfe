// ignore_for_file: constant_identifier_names

import 'dart:developer';

import 'package:flutter/material.dart';

enum Gender { Male, Female, Other }

class GenderDropdownWidget extends StatefulWidget {
  const GenderDropdownWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GenderDropdownWidgetState createState() => _GenderDropdownWidgetState();
}

class _GenderDropdownWidgetState extends State<GenderDropdownWidget> {
  Gender? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Gender>(
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
      value: Gender.values.first, //change to initial user country
      items: Gender.values
          .map((gender) => DropdownMenuItem<Gender>(
                value: gender,
                child: Text(gender.name.toString()),
              ))
          .toList(),
      onChanged: (newValue) {
        setState(() {
          _selectedGender = newValue;
          log(_selectedGender.toString());
        });
      },
    );
  }
}
