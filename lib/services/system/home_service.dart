// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:biblia_sagrada/core/interfaces/fetch_local_json.dart';
import 'package:biblia_sagrada/models/system/home_model.dart';
import 'package:flutter/services.dart';

class HomeService implements LocalData {
  @override
  Future<dynamic> fetchLocalData(String path) async {
    try {
      final String response = await rootBundle.loadString(path);
      final data = await json.decode(response);
      return data;
    } catch (e) {
      print("Houve um problema no catch do home_service $e");
    }
  }

  // MÉTODO PARA CONVERTER O JSON EM MODEL
  Future<HomeModel?> getHomeContent() async {
    final data = await fetchLocalData("assets/json/home_page.json");
    return HomeModel.fromJson(data);
  }
}
