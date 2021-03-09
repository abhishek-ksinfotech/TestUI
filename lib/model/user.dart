import 'package:flutter/material.dart';

class User{
  String _name;
  DateTime _date;




  String get name => _name;

  set name(String value) {
    _name = value;
  }

  DateTime get date => _date;

  set date(DateTime value) {
    _date = value;
  }
}