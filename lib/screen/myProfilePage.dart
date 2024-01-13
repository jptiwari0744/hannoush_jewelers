import 'package:ecommerce/providers/logOutProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () async {
            Provider.of<LogOutProvider>(context, listen: false)
                .logOutApi(context);

            final SharedPreferences prefs =
                await SharedPreferences.getInstance();

            // token = await prefs.getString('auth_token');

            await prefs.remove('auth_token');
            Navigator.pushNamedAndRemoveUntil(
                context, "/login", (Route<dynamic> route) => false);
          },
          child: Text('Log Out')),
    );
  }
}
