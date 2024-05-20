import 'package:flutter/material.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';

class AuthProvider extends ChangeNotifier {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  String? _authToken;

  String? get authToken => _authToken;

  Future<void> logout() async {
    _authToken = null;
    await _secureStorage.delete(key: 'authToken');
    notifyListeners();
  }

  Future<void> getAuthToken() async {
    _authToken = await _secureStorage.read(key: 'authToken');
    notifyListeners();
  }

  static AuthProvider of(BuildContext context) =>
      Provider.of<AuthProvider>(context, listen: false);
}
