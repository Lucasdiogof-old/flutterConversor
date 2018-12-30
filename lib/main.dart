import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

const request =
    "https://api.hgbrasil.com/finance/historical?format=json&days_ago=10&key=749c7e18";



void main() async {

  //O await faz com que nós temos que esperar os dados chegarem do servidor
  http.Response response = await http.get(request);
  print(response.body);

  runApp(MaterialApp(
    home: Container(),
  ));
}
