import 'package:flutter/material.dart';
import 'package:ux4gdesigns/app/navbarfeature/navbar.dart';

import '../accesibilityfeature/accesebilitybar.dart';

class ShellWrapper extends StatelessWidget {
  const ShellWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [AccesibilityBar(), NavBarTop()]));
  }
}
