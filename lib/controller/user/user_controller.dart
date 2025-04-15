import 'package:flutter/material.dart';
import 'package:getit_project/service/api/api_service.dart';
import 'package:getit_project/service/auth/auth_service.dart';
import 'package:getit_project/service/database/database_service.dart';

class UserController extends ChangeNotifier {
  final ApiService apiService;
  final AuthService authService;
  final DatabaseService databaseService;

  String userData = "Nenhum dado carregado";

  UserController({
    required this.apiService,
    required this.authService,
    required this.databaseService,
  });

  void loadUserData() {
    userData =
        "${authService.getUser()} - ${apiService.fetchData()} - ${databaseService.getLocalData()}";
    notifyListeners();
  }
}
