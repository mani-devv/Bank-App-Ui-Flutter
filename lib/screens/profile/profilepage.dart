import 'package:bank_app_ui/constants.dart';
import 'package:bank_app_ui/screens/profile/components/body.dart';
import 'package:bank_app_ui/utils/appbar.dart';
import 'package:bank_app_ui/utils/mybottombar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
          appBarTitle: 'Account',
          onTap: () {},
          leadingButton: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/icons/back.png",
              color: Colors.white,
              height: 25,
            ),
          ),
        ),
        bottomNavigationBar: const MyBottomBar(),
        body: Body(),
      ),
    );
  }
}
