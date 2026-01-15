import 'package:biblia_sagrada/core/enums/view_state.dart';
import 'package:biblia_sagrada/models/system/home_model.dart';
import 'package:biblia_sagrada/services/system/home_service.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  final HomeService _service;
  HomeProvider(this._service);

  ViewState _state = ViewState.idle;
  ViewState get state => _state;

  HomeModel? _homeData;
  HomeModel? get homeData => _homeData;

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  void _setState(ViewState state) {
    _state = state;
    notifyListeners();
  }

  Future<void> loadHomeContent() async {
    _setState(ViewState.loading);

    try {
      final data = await _service.getHomeContent();

      if (data == null) {
        _setState(ViewState.empty);
      } else {
        _homeData = data;
        _setState(ViewState.success);
      }
    } catch (e) {
      _errorMessage = e.toString();
      _setState(ViewState.error);
    }
  }
}
