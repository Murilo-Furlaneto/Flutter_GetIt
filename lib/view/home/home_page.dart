import 'package:flutter/material.dart';
import 'package:getit_project/controller/user/user_controller.dart';
import 'package:getit_project/service/api/api_service.dart';
import 'package:getit_project/service/auth/auth_service.dart';
import 'package:getit_project/service/getIt/init_getit.dart';

class HomePage extends StatelessWidget {
  final ApiService apiService = getIt<ApiService>();
  final AuthService authService = getIt<AuthService>();
  final UserController userController = getIt<UserController>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(apiService.fetchData()),
            Text(authService.getUser()),
            ElevatedButton(
              onPressed: () {
                userController.loadUserData();
              },
              child: Text("Load User Data"),
            ),
            AnimatedBuilder(
              animation: userController,
              builder: (context, child) {
                return Text(userController.userData);
              },
            ),
          ],
        ),
      ),
    );
  }
}
