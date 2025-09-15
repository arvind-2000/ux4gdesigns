import 'package:flutter/material.dart';
import 'package:ux4gdesigns/configs/appconfigs/appcinfig.dart';
import 'package:ux4gdesigns/configs/colors/colors.dart';

class NavBarTop extends StatelessWidget {
  const NavBarTop({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      color: Ux4gColorTheme.secondaryColor[100],
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: Row(
            children: [
              Image.asset(logoimage, fit: BoxFit.contain, height: 50, width: 50),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Home"),
                    SizedBox(width: 16),
                    Text("About"),
                    SizedBox(width: 16),
                    Text('Contacts'),
                  ],
                ),
              ),
              //actions
              OutlinedButton(onPressed: () {}, child: Text('Sign In')),
              SizedBox(width: 8),
              ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
            ],
          ),
        ),
      ),
    );
  }
}
