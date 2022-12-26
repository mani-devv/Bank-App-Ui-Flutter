import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  final dynamic leadingButton;
  final VoidCallback onTap;
  const MyAppBar({
    Key? key,
    required this.appBarTitle,
    required this.leadingButton,
    required this.onTap,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0.0,
      leadingWidth: 80,
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      backgroundColor: Colors.transparent,
      title: Text(appBarTitle),
      leading: leadingButton,
      actions: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            // height: 200,
            // width: 50,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/icons/mani.png',
                  fit: BoxFit.cover,
                  // scale: 30,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
