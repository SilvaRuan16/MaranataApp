// ignore_for_file: avoid_print

import 'package:biblia_sagrada/core/enums/view_state.dart';
import 'package:biblia_sagrada/models/system/settings_model.dart';
import 'package:biblia_sagrada/services/system/settings_service.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  final SettingsService _service;
  SettingsProvider(this._service);

  ViewState _state = ViewState.idle;
  ViewState get state => _state;

  SettingsModel? _settingsData;
  SettingsModel? get settingsData => _settingsData;

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  void _setState(ViewState state) {
    _state = state;
    notifyListeners();
  }

  Future<void> loadSettingsContent() async {
    _setState(ViewState.loading);

    try {
      final data = await _service.getSettingContent();

      if (data == null) {
        _setState(ViewState.empty);
      } else {
        _settingsData = data;
        _setState(ViewState.success);
      }
    } catch (e) {
      _errorMessage = e.toString();
      print(e);
      _setState(ViewState.error);
    }
  }
}
