import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../modelos/albergue.dart';

import '../globals.dart' as globals;

class AlberguesModel extends ChangeNotifier {
  final FocusNode unfocusNode = FocusNode();
  List<Albergue> _albergues = [];

  List<Albergue> get albergues => _albergues;

  Future<void> fetchAlbergues() async {
    final response = await http.get(Uri.parse('${globals.globalUrl}/albergues'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      _albergues = data.map((item) => Albergue.fromJson(item)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load albergues');
    }
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    super.dispose();
  }
}
