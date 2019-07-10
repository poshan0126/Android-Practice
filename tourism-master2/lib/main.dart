import 'package:flutter/material.dart';
import 'package:tourism/myapp.dart';
import 'package:map_view/map_view.dart';

var API_KEY = "AIzaSyCmtGgeRO6K2b9gM2fJh1XdjbOMhOCkOSY";

void main() {
  MapView.setApiKey(API_KEY);
  runApp(new MyApp());
}