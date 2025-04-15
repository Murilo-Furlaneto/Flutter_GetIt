import 'package:get_it/get_it.dart';
import 'package:getit_project/controller/user/user_controller.dart';
import 'package:getit_project/service/api/api_service.dart';
import 'package:getit_project/service/auth/auth_service.dart';
import 'package:getit_project/service/database/database_service.dart';

final GetIt _getIt = GetIt.instance;

GetIt get getIt => _getIt;

void setup() {
  _getIt.registerSingleton<ApiService>(ApiService());
  _getIt.registerSingleton<AuthService>(AuthService());
  _getIt.registerSingleton<DatabaseService>(DatabaseService());
  _getIt.registerLazySingleton<UserController>(
    () => UserController(
      apiService: _getIt<ApiService>(),
      authService: _getIt<AuthService>(),
      databaseService: _getIt<DatabaseService>(),
    ),
  );
}
