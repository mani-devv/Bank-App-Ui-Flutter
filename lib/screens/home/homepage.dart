import 'package:bank_app_ui/constants.dart';
import 'package:bank_app_ui/screens/profile/profilepage.dart';
import 'package:bank_app_ui/utils/appbar.dart';
import 'package:bank_app_ui/screens/home/components/body.dart';
import 'package:bank_app_ui/utils/mybottombar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            backgradient1,
            backgradient2,
            backgradient3,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          appBarTitle: 'Bank',
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) {
                  return const ProfilePage();
                },
              ),
            );
          },
          leadingButton: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/menu.png",
              color: Colors.white,
              height: 22,
            ),
          ),
        ),
        bottomNavigationBar: const MyBottomBar(),
        body: const Body(),
      ),
    );
  }
}
