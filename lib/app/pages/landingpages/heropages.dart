import 'package:flutter/material.dart';

import '../../../configs/colors/colors.dart';
import '../../../sharedwidgets/constrainedbox.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConnstrainedWrapper(
          child: Container(
            height: 800,
            color: Ux4gColorTheme.secondaryColor[100],
            child: Center(
              child: Text(
                "Center Container",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
        ),

        ConnstrainedWrapper(
          child: Container(
            height: 800,
            color: Ux4gColorTheme.secondaryColor[300],
            child: Center(
              child: Text(
                "About Container",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
        ),

        ConnstrainedWrapper(
          child: Container(
            height: 800,
            color: Ux4gColorTheme.secondaryColor[500],
            child: Center(
              child: Text(
                "Service Container",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
